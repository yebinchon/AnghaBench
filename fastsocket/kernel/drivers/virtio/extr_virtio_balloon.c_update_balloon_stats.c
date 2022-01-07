
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int dummy; } ;
struct sysinfo {unsigned long freeram; unsigned long totalram; } ;


 int NR_VM_EVENT_ITEMS ;
 size_t PGFAULT ;
 size_t PGMAJFAULT ;
 size_t PSWPIN ;
 size_t PSWPOUT ;
 int VIRTIO_BALLOON_S_MAJFLT ;
 int VIRTIO_BALLOON_S_MEMFREE ;
 int VIRTIO_BALLOON_S_MEMTOT ;
 int VIRTIO_BALLOON_S_MINFLT ;
 int VIRTIO_BALLOON_S_SWAP_IN ;
 int VIRTIO_BALLOON_S_SWAP_OUT ;
 int all_vm_events (unsigned long*) ;
 unsigned long pages_to_bytes (unsigned long) ;
 int si_meminfo (struct sysinfo*) ;
 int update_stat (struct virtio_balloon*,int ,int ,unsigned long) ;

__attribute__((used)) static void update_balloon_stats(struct virtio_balloon *vb)
{
 unsigned long events[NR_VM_EVENT_ITEMS];
 struct sysinfo i;
 int idx = 0;

 all_vm_events(events);
 si_meminfo(&i);

 update_stat(vb, idx++, VIRTIO_BALLOON_S_SWAP_IN,
    pages_to_bytes(events[PSWPIN]));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_SWAP_OUT,
    pages_to_bytes(events[PSWPOUT]));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MAJFLT, events[PGMAJFAULT]);
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MINFLT, events[PGFAULT]);
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MEMFREE,
    pages_to_bytes(i.freeram));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MEMTOT,
    pages_to_bytes(i.totalram));
}
