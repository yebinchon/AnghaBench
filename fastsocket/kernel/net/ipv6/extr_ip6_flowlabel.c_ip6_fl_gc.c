
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; struct ip6_flowlabel* next; int users; } ;


 int FL_HASH_MASK ;
 unsigned long FL_MAX_LINGER ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int fl_free (struct ip6_flowlabel*) ;
 struct ip6_flowlabel** fl_ht ;
 int fl_size ;
 int ip6_fl_gc_timer ;
 int ip6_fl_lock ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void ip6_fl_gc(unsigned long dummy)
{
 int i;
 unsigned long now = jiffies;
 unsigned long sched = 0;

 write_lock(&ip6_fl_lock);

 for (i=0; i<=FL_HASH_MASK; i++) {
  struct ip6_flowlabel *fl, **flp;
  flp = &fl_ht[i];
  while ((fl=*flp) != ((void*)0)) {
   if (atomic_read(&fl->users) == 0) {
    unsigned long ttd = fl->lastuse + fl->linger;
    if (time_after(ttd, fl->expires))
     fl->expires = ttd;
    ttd = fl->expires;
    if (time_after_eq(now, ttd)) {
     *flp = fl->next;
     fl_free(fl);
     atomic_dec(&fl_size);
     continue;
    }
    if (!sched || time_before(ttd, sched))
     sched = ttd;
   }
   flp = &fl->next;
  }
 }
 if (!sched && atomic_read(&fl_size))
  sched = now + FL_MAX_LINGER;
 if (sched) {
  mod_timer(&ip6_fl_gc_timer, sched);
 }
 write_unlock(&ip6_fl_lock);
}
