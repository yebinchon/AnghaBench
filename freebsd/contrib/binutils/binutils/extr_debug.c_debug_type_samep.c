
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct debug_type_compare_list {struct debug_type_compare_list* next; struct debug_type* t2; struct debug_type* t1; } ;
struct TYPE_15__ {TYPE_11__* knamed; struct debug_type* kvolatile; struct debug_type* kconst; TYPE_9__* kmethod; TYPE_8__* koffset; TYPE_7__* kset; TYPE_6__* karray; TYPE_5__* krange; struct debug_type* kreference; TYPE_4__* kfunction; struct debug_type* kpointer; TYPE_3__* kenum; TYPE_2__* kclass; int kint; TYPE_1__* kindirect; } ;
struct debug_type {scalar_t__ kind; scalar_t__ size; TYPE_12__ u; } ;
struct debug_handle {struct debug_type_compare_list* compare_list; int base_id; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
struct TYPE_24__ {struct debug_type** arg_types; struct debug_type* domain_type; struct debug_type* return_type; int varargs; } ;
struct TYPE_23__ {struct debug_type* target_type; struct debug_type* base_type; } ;
struct TYPE_22__ {struct debug_type* type; int bitstringp; } ;
struct TYPE_21__ {struct debug_type* element_type; int stringp; int upper; int lower; } ;
struct TYPE_20__ {struct debug_type* type; int upper; int lower; } ;
struct TYPE_19__ {struct debug_type** arg_types; struct debug_type* return_type; int varargs; } ;
struct TYPE_18__ {char** names; int * values; } ;
struct TYPE_17__ {int id; } ;
struct TYPE_16__ {struct debug_type** slot; } ;
struct TYPE_14__ {struct debug_type* type; TYPE_10__* name; } ;
struct TYPE_13__ {char const* name; } ;
 scalar_t__ DEBUG_KIND_INDIRECT ;
 int FALSE ;
 int TRUE ;
 int abort () ;
 int debug_class_type_samep (struct debug_handle*,struct debug_type*,struct debug_type*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bfd_boolean
debug_type_samep (struct debug_handle *info, struct debug_type *t1,
    struct debug_type *t2)
{
  struct debug_type_compare_list *l;
  struct debug_type_compare_list top;
  bfd_boolean ret;

  if (t1 == ((void*)0))
    return t2 == ((void*)0);
  if (t2 == ((void*)0))
    return FALSE;

  while (t1->kind == DEBUG_KIND_INDIRECT)
    {
      t1 = *t1->u.kindirect->slot;
      if (t1 == ((void*)0))
 return FALSE;
    }
  while (t2->kind == DEBUG_KIND_INDIRECT)
    {
      t2 = *t2->u.kindirect->slot;
      if (t2 == ((void*)0))
 return FALSE;
    }

  if (t1 == t2)
    return TRUE;




  if (t1->kind == 139
      && t2->kind == 132)
    return debug_type_samep (info, t1->u.knamed->type, t2);
  else if (t1->kind == 132
    && t2->kind == 139)
    return debug_type_samep (info, t1, t2->u.knamed->type);

  if (t1->kind != t2->kind
      || t1->size != t2->size)
    return FALSE;


  switch (t1->kind)
    {
    default:
      break;
    case 129:
    case 143:
    case 146:
    case 148:
      return TRUE;
    case 141:
      return t1->u.kint == t2->u.kint;
    }





  for (l = info->compare_list; l != ((void*)0); l = l->next)
    {
      if (l->t1 == t1 && l->t2 == t2)
 return TRUE;
    }

  top.t1 = t1;
  top.t2 = t2;
  top.next = info->compare_list;
  info->compare_list = &top;

  switch (t1->kind)
    {
    default:
      abort ();
      ret = FALSE;
      break;

    case 133:
    case 131:
    case 147:
    case 130:
      if (t1->u.kclass == ((void*)0))
 ret = t2->u.kclass == ((void*)0);
      else if (t2->u.kclass == ((void*)0))
 ret = FALSE;
      else if (t1->u.kclass->id > info->base_id
        && t1->u.kclass->id == t2->u.kclass->id)
 ret = TRUE;
      else
 ret = debug_class_type_samep (info, t1, t2);
      break;

    case 144:
      if (t1->u.kenum == ((void*)0))
 ret = t2->u.kenum == ((void*)0);
      else if (t2->u.kenum == ((void*)0))
 ret = FALSE;
      else
 {
   const char **pn1, **pn2;
   bfd_signed_vma *pv1, *pv2;

   pn1 = t1->u.kenum->names;
   pn2 = t2->u.kenum->names;
   pv1 = t1->u.kenum->values;
   pv2 = t2->u.kenum->values;
   while (*pn1 != ((void*)0) && *pn2 != ((void*)0))
     {
       if (**pn1 != **pn2
    || *pv1 != *pv2
    || strcmp (*pn1, *pn2) != 0)
  break;
       ++pn1;
       ++pn2;
       ++pv1;
       ++pv2;
     }
   ret = *pn1 == ((void*)0) && *pn2 == ((void*)0);
 }
      break;

    case 137:
      ret = debug_type_samep (info, t1->u.kpointer, t2->u.kpointer);
      break;

    case 142:
      if (t1->u.kfunction->varargs != t2->u.kfunction->varargs
   || ! debug_type_samep (info, t1->u.kfunction->return_type,
     t2->u.kfunction->return_type)
   || ((t1->u.kfunction->arg_types == ((void*)0))
       != (t2->u.kfunction->arg_types == ((void*)0))))
 ret = FALSE;
      else if (t1->u.kfunction->arg_types == ((void*)0))
 ret = TRUE;
      else
 {
   struct debug_type **a1, **a2;

   a1 = t1->u.kfunction->arg_types;
   a2 = t2->u.kfunction->arg_types;
   while (*a1 != ((void*)0) && *a2 != ((void*)0))
     {
       if (! debug_type_samep (info, *a1, *a2))
  break;
       ++a1;
       ++a2;
     }
   ret = *a1 == ((void*)0) && *a2 == ((void*)0);
 }
      break;

    case 135:
      ret = debug_type_samep (info, t1->u.kreference, t2->u.kreference);
      break;

    case 136:
      ret = (t1->u.krange->lower == t2->u.krange->lower
      && t1->u.krange->upper == t2->u.krange->upper
      && debug_type_samep (info, t1->u.krange->type,
      t2->u.krange->type));

    case 149:
      ret = (t1->u.karray->lower == t2->u.karray->lower
      && t1->u.karray->upper == t2->u.karray->upper
      && t1->u.karray->stringp == t2->u.karray->stringp
      && debug_type_samep (info, t1->u.karray->element_type,
      t2->u.karray->element_type));
      break;

    case 134:
      ret = (t1->u.kset->bitstringp == t2->u.kset->bitstringp
      && debug_type_samep (info, t1->u.kset->type, t2->u.kset->type));
      break;

    case 138:
      ret = (debug_type_samep (info, t1->u.koffset->base_type,
          t2->u.koffset->base_type)
      && debug_type_samep (info, t1->u.koffset->target_type,
      t2->u.koffset->target_type));
      break;

    case 140:
      if (t1->u.kmethod->varargs != t2->u.kmethod->varargs
   || ! debug_type_samep (info, t1->u.kmethod->return_type,
     t2->u.kmethod->return_type)
   || ! debug_type_samep (info, t1->u.kmethod->domain_type,
     t2->u.kmethod->domain_type)
   || ((t1->u.kmethod->arg_types == ((void*)0))
       != (t2->u.kmethod->arg_types == ((void*)0))))
 ret = FALSE;
      else if (t1->u.kmethod->arg_types == ((void*)0))
 ret = TRUE;
      else
 {
   struct debug_type **a1, **a2;

   a1 = t1->u.kmethod->arg_types;
   a2 = t2->u.kmethod->arg_types;
   while (*a1 != ((void*)0) && *a2 != ((void*)0))
     {
       if (! debug_type_samep (info, *a1, *a2))
  break;
       ++a1;
       ++a2;
     }
   ret = *a1 == ((void*)0) && *a2 == ((void*)0);
 }
      break;

    case 145:
      ret = debug_type_samep (info, t1->u.kconst, t2->u.kconst);
      break;

    case 128:
      ret = debug_type_samep (info, t1->u.kvolatile, t2->u.kvolatile);
      break;

    case 139:
    case 132:
      ret = (strcmp (t1->u.knamed->name->name, t2->u.knamed->name->name) == 0
      && debug_type_samep (info, t1->u.knamed->type,
      t2->u.knamed->type));
      break;
    }

  info->compare_list = top.next;

  return ret;
}
