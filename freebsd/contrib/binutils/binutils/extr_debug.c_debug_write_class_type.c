
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct debug_write_fns {int (* end_class_type ) (void*) ;int (* class_end_method ) (void*) ;int (* class_static_method_variant ) (void*,int ,int ,int ,int ) ;int (* class_method_variant ) (void*,int ,int ,int ,int ,scalar_t__,int ) ;int (* class_start_method ) (void*,int ) ;int (* class_baseclass ) (void*,int ,int ,int ) ;int (* struct_field ) (void*,int ,int ,int ,int ) ;int (* class_static_member ) (void*,int ,int ,int ) ;int (* start_class_type ) (void*,char const*,unsigned int,int,int ,int ,int) ;int (* tag_type ) (void*,char const*,unsigned int,scalar_t__) ;} ;
struct TYPE_10__ {TYPE_4__* kclass; } ;
struct debug_type {scalar_t__ kind; TYPE_5__ u; int size; } ;
struct debug_name {int dummy; } ;
struct debug_method_variant {scalar_t__ voffset; int volatilep; int constp; int visibility; int physname; struct debug_type* context; struct debug_type* type; } ;
struct debug_method {struct debug_method_variant** variants; int name; } ;
struct debug_handle {unsigned int base_id; scalar_t__ mark; } ;
struct TYPE_7__ {int bitsize; int bitpos; } ;
struct TYPE_6__ {int physname; } ;
struct TYPE_8__ {TYPE_2__ f; TYPE_1__ s; } ;
struct debug_field {int visibility; TYPE_3__ u; int name; scalar_t__ static_member; struct debug_type* type; } ;
struct debug_baseclass {int visibility; int virtual; int bitpos; struct debug_type* type; } ;
typedef int bfd_boolean ;
struct TYPE_9__ {unsigned int id; scalar_t__ mark; struct debug_method** methods; struct debug_baseclass** baseclasses; struct debug_field** fields; struct debug_type* vptrbase; } ;


 scalar_t__ DEBUG_KIND_CLASS ;
 int FALSE ;
 scalar_t__ VOFFSET_STATIC_METHOD ;
 int assert (int) ;
 int debug_set_class_id (struct debug_handle*,char const*,struct debug_type*) ;
 int debug_write_type (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_type*,struct debug_name*) ;
 int stub1 (void*,char const*,unsigned int,scalar_t__) ;
 int stub10 (void*) ;
 int stub2 (void*,char const*,unsigned int,int,int ,int ,int) ;
 int stub3 (void*,int ,int ,int ) ;
 int stub4 (void*,int ,int ,int ,int ) ;
 int stub5 (void*,int ,int ,int ) ;
 int stub6 (void*,int ) ;
 int stub7 (void*,int ,int ,int ,int ,scalar_t__,int ) ;
 int stub8 (void*,int ,int ,int ,int ) ;
 int stub9 (void*) ;

__attribute__((used)) static bfd_boolean
debug_write_class_type (struct debug_handle *info,
   const struct debug_write_fns *fns, void *fhandle,
   struct debug_type *type, const char *tag)
{
  unsigned int i;
  unsigned int id;
  struct debug_type *vptrbase;

  if (type->u.kclass == ((void*)0))
    {
      id = 0;
      vptrbase = ((void*)0);
    }
  else
    {
      if (type->u.kclass->id <= info->base_id)
 {
   if (! debug_set_class_id (info, tag, type))
     return FALSE;
 }

      if (info->mark == type->u.kclass->mark)
 {



   assert (type->u.kclass->id > info->base_id);
   return (*fns->tag_type) (fhandle, tag, type->u.kclass->id,
       type->kind);
 }
      type->u.kclass->mark = info->mark;
      id = type->u.kclass->id;

      vptrbase = type->u.kclass->vptrbase;
      if (vptrbase != ((void*)0) && vptrbase != type)
 {
   if (! debug_write_type (info, fns, fhandle, vptrbase,
      (struct debug_name *) ((void*)0)))
     return FALSE;
 }
    }

  if (! (*fns->start_class_type) (fhandle, tag, id,
      type->kind == DEBUG_KIND_CLASS,
      type->size,
      vptrbase != ((void*)0),
      vptrbase == type))
    return FALSE;

  if (type->u.kclass != ((void*)0))
    {
      if (type->u.kclass->fields != ((void*)0))
 {
   for (i = 0; type->u.kclass->fields[i] != ((void*)0); i++)
     {
       struct debug_field *f;

       f = type->u.kclass->fields[i];
       if (! debug_write_type (info, fns, fhandle, f->type,
          (struct debug_name *) ((void*)0)))
  return FALSE;
       if (f->static_member)
  {
    if (! (*fns->class_static_member) (fhandle, f->name,
           f->u.s.physname,
           f->visibility))
      return FALSE;
  }
       else
  {
    if (! (*fns->struct_field) (fhandle, f->name, f->u.f.bitpos,
           f->u.f.bitsize, f->visibility))
      return FALSE;
  }
     }
 }

      if (type->u.kclass->baseclasses != ((void*)0))
 {
   for (i = 0; type->u.kclass->baseclasses[i] != ((void*)0); i++)
     {
       struct debug_baseclass *b;

       b = type->u.kclass->baseclasses[i];
       if (! debug_write_type (info, fns, fhandle, b->type,
          (struct debug_name *) ((void*)0)))
  return FALSE;
       if (! (*fns->class_baseclass) (fhandle, b->bitpos, b->virtual,
          b->visibility))
  return FALSE;
     }
 }

      if (type->u.kclass->methods != ((void*)0))
 {
   for (i = 0; type->u.kclass->methods[i] != ((void*)0); i++)
     {
       struct debug_method *m;
       unsigned int j;

       m = type->u.kclass->methods[i];
       if (! (*fns->class_start_method) (fhandle, m->name))
  return FALSE;
       for (j = 0; m->variants[j] != ((void*)0); j++)
  {
    struct debug_method_variant *v;

    v = m->variants[j];
    if (v->context != ((void*)0))
      {
        if (! debug_write_type (info, fns, fhandle, v->context,
           (struct debug_name *) ((void*)0)))
   return FALSE;
      }
    if (! debug_write_type (info, fns, fhandle, v->type,
       (struct debug_name *) ((void*)0)))
      return FALSE;
    if (v->voffset != VOFFSET_STATIC_METHOD)
      {
        if (! (*fns->class_method_variant) (fhandle, v->physname,
         v->visibility,
         v->constp,
         v->volatilep,
         v->voffset,
         v->context != ((void*)0)))
   return FALSE;
      }
    else
      {
        if (! (*fns->class_static_method_variant) (fhandle,
         v->physname,
         v->visibility,
         v->constp,
         v->volatilep))
   return FALSE;
      }
  }
       if (! (*fns->class_end_method) (fhandle))
  return FALSE;
     }
 }
    }

  return (*fns->end_class_type) (fhandle);
}
