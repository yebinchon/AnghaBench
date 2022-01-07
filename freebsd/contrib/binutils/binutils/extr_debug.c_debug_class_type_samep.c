
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct debug_class_type* kclass; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_method_variant {scalar_t__* physname; scalar_t__ visibility; scalar_t__ constp; scalar_t__ volatilep; scalar_t__ voffset; int * context; int * type; } ;
struct debug_method {scalar_t__* name; struct debug_method_variant** variants; } ;
struct debug_handle {int dummy; } ;
struct TYPE_7__ {scalar_t__ bitpos; scalar_t__ bitsize; } ;
struct TYPE_6__ {scalar_t__* physname; } ;
struct TYPE_8__ {TYPE_3__ f; TYPE_2__ s; } ;
struct debug_field {scalar_t__* name; scalar_t__ visibility; scalar_t__ static_member; int type; TYPE_4__ u; } ;
struct debug_class_type {struct debug_method** methods; struct debug_baseclass** baseclasses; int * vptrbase; struct debug_field** fields; } ;
struct debug_baseclass {scalar_t__ bitpos; scalar_t__ virtual; scalar_t__ visibility; int * type; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int * debug_get_real_type (void*,int ,int *) ;
 int debug_type_samep (struct debug_handle*,int *,int *) ;
 scalar_t__ strcmp (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static bfd_boolean
debug_class_type_samep (struct debug_handle *info, struct debug_type *t1,
   struct debug_type *t2)
{
  struct debug_class_type *c1, *c2;

  c1 = t1->u.kclass;
  c2 = t2->u.kclass;

  if ((c1->fields == ((void*)0)) != (c2->fields == ((void*)0))
      || (c1->baseclasses == ((void*)0)) != (c2->baseclasses == ((void*)0))
      || (c1->methods == ((void*)0)) != (c2->methods == ((void*)0))
      || (c1->vptrbase == ((void*)0)) != (c2->vptrbase == ((void*)0)))
    return FALSE;

  if (c1->fields != ((void*)0))
    {
      struct debug_field **pf1, **pf2;

      for (pf1 = c1->fields, pf2 = c2->fields;
    *pf1 != ((void*)0) && *pf2 != ((void*)0);
    pf1++, pf2++)
 {
   struct debug_field *f1, *f2;

   f1 = *pf1;
   f2 = *pf2;
   if (f1->name[0] != f2->name[0]
       || f1->visibility != f2->visibility
       || f1->static_member != f2->static_member)
     return FALSE;
   if (f1->static_member)
     {
       if (strcmp (f1->u.s.physname, f2->u.s.physname) != 0)
  return FALSE;
     }
   else
     {
       if (f1->u.f.bitpos != f2->u.f.bitpos
    || f1->u.f.bitsize != f2->u.f.bitsize)
  return FALSE;
     }




   if (strcmp (f1->name, f2->name) != 0
       || ! debug_type_samep (info,
         debug_get_real_type ((void *) info,
         f1->type, ((void*)0)),
         debug_get_real_type ((void *) info,
         f2->type, ((void*)0))))
     return FALSE;
 }
      if (*pf1 != ((void*)0) || *pf2 != ((void*)0))
 return FALSE;
    }

  if (c1->vptrbase != ((void*)0))
    {
      if (! debug_type_samep (info, c1->vptrbase, c2->vptrbase))
 return FALSE;
    }

  if (c1->baseclasses != ((void*)0))
    {
      struct debug_baseclass **pb1, **pb2;

      for (pb1 = c1->baseclasses, pb2 = c2->baseclasses;
    *pb1 != ((void*)0) && *pb2 != ((void*)0);
    ++pb1, ++pb2)
 {
   struct debug_baseclass *b1, *b2;

   b1 = *pb1;
   b2 = *pb2;
   if (b1->bitpos != b2->bitpos
       || b1->virtual != b2->virtual
       || b1->visibility != b2->visibility
       || ! debug_type_samep (info, b1->type, b2->type))
     return FALSE;
 }
      if (*pb1 != ((void*)0) || *pb2 != ((void*)0))
 return FALSE;
    }

  if (c1->methods != ((void*)0))
    {
      struct debug_method **pm1, **pm2;

      for (pm1 = c1->methods, pm2 = c2->methods;
    *pm1 != ((void*)0) && *pm2 != ((void*)0);
    ++pm1, ++pm2)
 {
   struct debug_method *m1, *m2;

   m1 = *pm1;
   m2 = *pm2;
   if (m1->name[0] != m2->name[0]
       || strcmp (m1->name, m2->name) != 0
       || (m1->variants == ((void*)0)) != (m2->variants == ((void*)0)))
     return FALSE;
   if (m1->variants == ((void*)0))
     {
       struct debug_method_variant **pv1, **pv2;

       for (pv1 = m1->variants, pv2 = m2->variants;
     *pv1 != ((void*)0) && *pv2 != ((void*)0);
     ++pv1, ++pv2)
  {
    struct debug_method_variant *v1, *v2;

    v1 = *pv1;
    v2 = *pv2;
    if (v1->physname[0] != v2->physname[0]
        || v1->visibility != v2->visibility
        || v1->constp != v2->constp
        || v1->volatilep != v2->volatilep
        || v1->voffset != v2->voffset
        || (v1->context == ((void*)0)) != (v2->context == ((void*)0))
        || strcmp (v1->physname, v2->physname) != 0
        || ! debug_type_samep (info, v1->type, v2->type))
      return FALSE;
    if (v1->context != ((void*)0))
      {
        if (! debug_type_samep (info, v1->context,
           v2->context))
   return FALSE;
      }
  }
       if (*pv1 != ((void*)0) || *pv2 != ((void*)0))
  return FALSE;
     }
 }
      if (*pm1 != ((void*)0) || *pm2 != ((void*)0))
 return FALSE;
    }

  return TRUE;
}
