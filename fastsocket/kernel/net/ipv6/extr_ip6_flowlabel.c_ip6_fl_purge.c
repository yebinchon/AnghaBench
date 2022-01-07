
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip6_flowlabel {struct ip6_flowlabel* next; int users; struct net* fl_net; } ;


 int FL_HASH_MASK ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int fl_free (struct ip6_flowlabel*) ;
 struct ip6_flowlabel** fl_ht ;
 int fl_size ;
 int ip6_fl_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void ip6_fl_purge(struct net *net)
{
 int i;

 write_lock(&ip6_fl_lock);
 for (i = 0; i <= FL_HASH_MASK; i++) {
  struct ip6_flowlabel *fl, **flp;
  flp = &fl_ht[i];
  while ((fl = *flp) != ((void*)0)) {
   if (fl->fl_net == net && atomic_read(&fl->users) == 0) {
    *flp = fl->next;
    fl_free(fl);
    atomic_dec(&fl_size);
    continue;
   }
   flp = &fl->next;
  }
 }
 write_unlock(&ip6_fl_lock);
}
