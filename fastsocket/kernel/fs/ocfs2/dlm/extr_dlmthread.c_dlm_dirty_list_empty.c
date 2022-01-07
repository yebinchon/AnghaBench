
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int spinlock; int dirty_list; } ;


 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_dirty_list_empty(struct dlm_ctxt *dlm)
{
 int empty;

 spin_lock(&dlm->spinlock);
 empty = list_empty(&dlm->dirty_list);
 spin_unlock(&dlm->spinlock);

 return empty;
}
