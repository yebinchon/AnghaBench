
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidmap {int nr_free; void* page; } ;
struct pid_namespace {int last_pid; struct pidmap* pidmap; } ;


 int BITS_PER_PAGE ;
 int BITS_PER_PAGE_MASK ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int RESERVED_PIDS ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int find_next_offset (struct pidmap*,int) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 scalar_t__ likely (int ) ;
 int mk_pid (struct pid_namespace*,struct pidmap*,int) ;
 int pid_max ;
 int pidmap_lock ;
 int set_last_pid (struct pid_namespace*,int,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit (int,void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int alloc_pidmap(struct pid_namespace *pid_ns)
{
 int i, offset, max_scan, pid, last = pid_ns->last_pid;
 struct pidmap *map;

 pid = last + 1;
 if (pid >= pid_max)
  pid = RESERVED_PIDS;
 offset = pid & BITS_PER_PAGE_MASK;
 map = &pid_ns->pidmap[pid/BITS_PER_PAGE];
 max_scan = (pid_max + BITS_PER_PAGE - 1)/BITS_PER_PAGE - !offset;
 for (i = 0; i <= max_scan; ++i) {
  if (unlikely(!map->page)) {
   void *page = kzalloc(PAGE_SIZE, GFP_KERNEL);




   spin_lock_irq(&pidmap_lock);
   if (map->page)
    kfree(page);
   else
    map->page = page;
   spin_unlock_irq(&pidmap_lock);
   if (unlikely(!map->page))
    break;
  }
  if (likely(atomic_read(&map->nr_free))) {
   do {
    if (!test_and_set_bit(offset, map->page)) {
     atomic_dec(&map->nr_free);
     set_last_pid(pid_ns, last, pid);
     return pid;
    }
    offset = find_next_offset(map, offset);
    pid = mk_pid(pid_ns, map, offset);






   } while (offset < BITS_PER_PAGE && pid < pid_max &&
     (i != max_scan || pid < last ||
         !((last+1) & BITS_PER_PAGE_MASK)));
  }
  if (map < &pid_ns->pidmap[(pid_max-1)/BITS_PER_PAGE]) {
   ++map;
   offset = 0;
  } else {
   map = &pid_ns->pidmap[0];
   offset = RESERVED_PIDS;
   if (unlikely(last == offset))
    break;
  }
  pid = mk_pid(pid_ns, map, offset);
 }
 return -1;
}
