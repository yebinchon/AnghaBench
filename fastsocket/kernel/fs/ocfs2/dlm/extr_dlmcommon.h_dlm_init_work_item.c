
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_work_item {struct dlm_ctxt* dlm; void* data; int list; int * func; } ;
struct dlm_ctxt {int dummy; } ;
typedef int dlm_workfunc_t ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct dlm_work_item*,int ,int) ;

__attribute__((used)) static inline void dlm_init_work_item(struct dlm_ctxt *dlm,
          struct dlm_work_item *i,
          dlm_workfunc_t *f, void *data)
{
 memset(i, 0, sizeof(*i));
 i->func = f;
 INIT_LIST_HEAD(&i->list);
 i->data = data;
 i->dlm = dlm;
}
