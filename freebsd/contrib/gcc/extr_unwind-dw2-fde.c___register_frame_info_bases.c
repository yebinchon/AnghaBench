
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uword ;
struct TYPE_5__ {int encoding; } ;
struct TYPE_6__ {TYPE_2__ b; scalar_t__ i; } ;
struct TYPE_4__ {void const* single; } ;
struct object {struct object* next; int * fde_end; TYPE_3__ s; TYPE_1__ u; void* dbase; void* tbase; void* pc_begin; } ;


 int DW_EH_PE_omit ;
 int __gthread_mutex_lock (int *) ;
 int __gthread_mutex_unlock (int *) ;
 int init_object_mutex_once () ;
 int object_mutex ;
 struct object* unseen_objects ;

void
__register_frame_info_bases (const void *begin, struct object *ob,
        void *tbase, void *dbase)
{

  if ((uword *) begin == 0 || *(uword *) begin == 0)
    return;

  ob->pc_begin = (void *)-1;
  ob->tbase = tbase;
  ob->dbase = dbase;
  ob->u.single = begin;
  ob->s.i = 0;
  ob->s.b.encoding = DW_EH_PE_omit;




  init_object_mutex_once ();
  __gthread_mutex_lock (&object_mutex);

  ob->next = unseen_objects;
  unseen_objects = ob;

  __gthread_mutex_unlock (&object_mutex);
}
