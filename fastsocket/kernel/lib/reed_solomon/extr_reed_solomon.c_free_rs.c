
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_control {struct rs_control* genpoly; struct rs_control* index_of; struct rs_control* alpha_to; int list; int users; } ;


 int kfree (struct rs_control*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rslistlock ;

void free_rs(struct rs_control *rs)
{
 mutex_lock(&rslistlock);
 rs->users--;
 if(!rs->users) {
  list_del(&rs->list);
  kfree(rs->alpha_to);
  kfree(rs->index_of);
  kfree(rs->genpoly);
  kfree(rs);
 }
 mutex_unlock(&rslistlock);
}
