
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_8__ {TYPE_1__ b; } ;
struct object {void* pc_begin; TYPE_2__ s; int dbase; int tbase; struct object* next; } ;
struct dwarf_eh_bases {void* func; int dbase; int tbase; } ;
struct TYPE_9__ {int pc_begin; } ;
typedef TYPE_3__ fde ;
typedef scalar_t__ _Unwind_Ptr ;


 int __gthread_mutex_lock (int *) ;
 int __gthread_mutex_unlock (int *) ;
 int base_from_object (int,struct object*) ;
 int get_fde_encoding (TYPE_3__ const*) ;
 int init_object_mutex_once () ;
 int object_mutex ;
 int read_encoded_value_with_base (int,int ,int ,scalar_t__*) ;
 TYPE_3__* search_object (struct object*,void*) ;
 struct object* seen_objects ;
 struct object* unseen_objects ;

const fde *
_Unwind_Find_FDE (void *pc, struct dwarf_eh_bases *bases)
{
  struct object *ob;
  const fde *f = ((void*)0);

  init_object_mutex_once ();
  __gthread_mutex_lock (&object_mutex);




  for (ob = seen_objects; ob; ob = ob->next)
    if (pc >= ob->pc_begin)
      {
 f = search_object (ob, pc);
 if (f)
   goto fini;
 break;
      }


  while ((ob = unseen_objects))
    {
      struct object **p;

      unseen_objects = ob->next;
      f = search_object (ob, pc);


      for (p = &seen_objects; *p ; p = &(*p)->next)
 if ((*p)->pc_begin < ob->pc_begin)
   break;
      ob->next = *p;
      *p = ob;

      if (f)
 goto fini;
    }

 fini:
  __gthread_mutex_unlock (&object_mutex);

  if (f)
    {
      int encoding;
      _Unwind_Ptr func;

      bases->tbase = ob->tbase;
      bases->dbase = ob->dbase;

      encoding = ob->s.b.encoding;
      if (ob->s.b.mixed_encoding)
 encoding = get_fde_encoding (f);
      read_encoded_value_with_base (encoding, base_from_object (encoding, ob),
        f->pc_begin, &func);
      bases->func = (void *) func;
    }

  return f;
}
