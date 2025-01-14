
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_5__* type_p ;
typedef TYPE_6__* pair_p ;
typedef enum gc_used_enum { ____Placeholder_gc_used_enum } gc_used_enum ;
struct TYPE_18__ {TYPE_5__* type; int opt; struct TYPE_18__* next; } ;
struct TYPE_15__ {TYPE_5__** param; TYPE_5__* stru; } ;
struct TYPE_14__ {TYPE_5__* lang_struct; TYPE_6__* fields; int opt; } ;
struct TYPE_13__ {TYPE_5__* p; } ;
struct TYPE_16__ {TYPE_3__ param_struct; TYPE_2__ s; TYPE_1__ a; TYPE_5__* p; } ;
struct TYPE_17__ {int gc_used; int kind; TYPE_4__ u; struct TYPE_17__* next; } ;


 int GC_MAYBE_POINTED_TO ;
 int GC_POINTED_TO ;
 int GC_UNUSED ;
 int GC_USED ;
 int NUM_PARAM ;






 TYPE_5__* find_param_structure (TYPE_5__*,TYPE_5__**) ;
 int process_gc_options (int ,int,int*,int*,int*,TYPE_5__**) ;

__attribute__((used)) static void
set_gc_used_type (type_p t, enum gc_used_enum level, type_p param[NUM_PARAM])
{
  if (t->gc_used >= level)
    return;

  t->gc_used = level;

  switch (t->kind)
    {
    case 129:
    case 128:
      {
 pair_p f;
 int dummy;
 type_p dummy2;

 process_gc_options (t->u.s.opt, level, &dummy, &dummy, &dummy,
       &dummy2);

 for (f = t->u.s.fields; f; f = f->next)
   {
     int maybe_undef = 0;
     int pass_param = 0;
     int length = 0;
     type_p nested_ptr = ((void*)0);
     process_gc_options (f->opt, level, &maybe_undef, &pass_param,
    &length, &nested_ptr);

     if (nested_ptr && f->type->kind == 130)
       set_gc_used_type (nested_ptr, GC_POINTED_TO,
    pass_param ? param : ((void*)0));
     else if (length && f->type->kind == 130)
       set_gc_used_type (f->type->u.p, GC_USED, ((void*)0));
     else if (maybe_undef && f->type->kind == 130)
       set_gc_used_type (f->type->u.p, GC_MAYBE_POINTED_TO, ((void*)0));
     else if (pass_param && f->type->kind == 130 && param)
       set_gc_used_type (find_param_structure (f->type->u.p, param),
    GC_POINTED_TO, ((void*)0));
     else
       set_gc_used_type (f->type, GC_USED, pass_param ? param : ((void*)0));
   }
 break;
      }

    case 130:
      set_gc_used_type (t->u.p, GC_POINTED_TO, ((void*)0));
      break;

    case 133:
      set_gc_used_type (t->u.a.p, GC_USED, param);
      break;

    case 132:
      for (t = t->u.s.lang_struct; t; t = t->next)
 set_gc_used_type (t, level, param);
      break;

    case 131:
      {
 int i;
 for (i = 0; i < NUM_PARAM; i++)
   if (t->u.param_struct.param[i] != 0)
     set_gc_used_type (t->u.param_struct.param[i], GC_USED, ((void*)0));
      }
      if (t->u.param_struct.stru->gc_used == GC_POINTED_TO)
 level = GC_POINTED_TO;
      else
 level = GC_USED;
      t->u.param_struct.stru->gc_used = GC_UNUSED;
      set_gc_used_type (t->u.param_struct.stru, level,
   t->u.param_struct.param);
      break;

    default:
      break;
    }
}
