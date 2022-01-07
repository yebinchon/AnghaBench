
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {int link; int inflight; } ;
struct sock {int dummy; } ;
struct file {int dummy; } ;


 int BUG_ON (int) ;
 int atomic_long_inc_return (int *) ;
 int gc_inflight_list ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unix_gc_lock ;
 struct sock* unix_get_socket (struct file*) ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_tot_inflight ;

void unix_inflight(struct file *fp)
{
 struct sock *s = unix_get_socket(fp);
 if (s) {
  struct unix_sock *u = unix_sk(s);
  spin_lock(&unix_gc_lock);
  if (atomic_long_inc_return(&u->inflight) == 1) {
   BUG_ON(!list_empty(&u->link));
   list_add_tail(&u->link, &gc_inflight_list);
  } else {
   BUG_ON(list_empty(&u->link));
  }
  unix_tot_inflight++;
  spin_unlock(&unix_gc_lock);
 }
}
