
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct debug_write_fns {void* (* typedef_type ) (void*,char const*) ;void* (* empty_type ) (void*) ;void* (* tag_type ) (void*,char const*,unsigned int,scalar_t__) ;void* (* void_type ) (void*) ;void* (* int_type ) (void*,int ,int ) ;void* (* float_type ) (void*,int ) ;void* (* complex_type ) (void*,int ) ;void* (* bool_type ) (void*,int ) ;void* (* end_struct_type ) (void*) ;void* (* enum_type ) (void*,char const*,char const**,int *) ;void* (* pointer_type ) (void*) ;void* (* function_type ) (void*,int,int ) ;void* (* reference_type ) (void*) ;void* (* range_type ) (void*,int ,int ) ;void* (* array_type ) (void*,int ,int ,int ) ;void* (* set_type ) (void*,int ) ;void* (* offset_type ) (void*) ;void* (* method_type ) (void*,int ,int,int ) ;void* (* const_type ) (void*) ;void* (* volatile_type ) (void*) ;int (* struct_field ) (void*,int ,int ,int ,int ) ;int (* start_struct_type ) (void*,char const*,unsigned int,int,int ) ;} ;
struct TYPE_17__ {TYPE_12__* knamed; struct debug_type* kvolatile; struct debug_type* kconst; TYPE_11__* kmethod; TYPE_10__* koffset; TYPE_9__* kset; TYPE_8__* karray; TYPE_7__* krange; struct debug_type* kreference; TYPE_6__* kfunction; struct debug_type* kpointer; TYPE_5__* kenum; TYPE_2__* kclass; int kint; TYPE_1__* kindirect; } ;
struct debug_type {int kind; TYPE_13__ u; int size; } ;
struct debug_name {scalar_t__ mark; char const* name; scalar_t__ kind; } ;
struct debug_handle {scalar_t__ mark; unsigned int base_id; } ;
struct TYPE_20__ {int bitsize; int bitpos; } ;
struct TYPE_21__ {TYPE_3__ f; } ;
struct debug_field {int visibility; TYPE_4__ u; int name; struct debug_type* type; } ;
typedef int bfd_signed_vma ;
typedef void* bfd_boolean ;
struct TYPE_26__ {int bitstringp; struct debug_type* type; } ;
struct TYPE_25__ {int stringp; int upper; int lower; struct debug_type* range_type; struct debug_type* element_type; } ;
struct TYPE_24__ {int upper; int lower; struct debug_type* type; } ;
struct TYPE_23__ {int varargs; struct debug_type** arg_types; struct debug_type* return_type; } ;
struct TYPE_22__ {char const** names; int * values; } ;
struct TYPE_19__ {unsigned int id; scalar_t__ mark; struct debug_field** fields; } ;
struct TYPE_18__ {struct debug_type** slot; } ;
struct TYPE_16__ {struct debug_name* name; struct debug_type* type; } ;
struct TYPE_15__ {int varargs; struct debug_type* domain_type; struct debug_type** arg_types; struct debug_type* return_type; } ;
struct TYPE_14__ {struct debug_type* target_type; struct debug_type* base_type; } ;
 scalar_t__ DEBUG_OBJECT_TAG ;
 struct debug_type* DEBUG_TYPE_NULL ;
 void* FALSE ;
 int _ (char*) ;
 int abort () ;
 int assert (int) ;
 int debug_error (int ) ;
 struct debug_type* debug_get_real_type (void*,struct debug_type*,int *) ;
 int debug_set_class_id (struct debug_handle*,char const*,struct debug_type*) ;
 void* debug_write_class_type (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_type*,char const*) ;
 void* stub1 (void*,char const*) ;
 void* stub10 (void*,char const*,unsigned int,scalar_t__) ;
 int stub11 (void*,char const*,unsigned int,int,int ) ;
 int stub12 (void*,int ,int ,int ,int ) ;
 void* stub13 (void*) ;
 void* stub14 (void*,char const*,char const**,int *) ;
 void* stub15 (void*,char const*,char const**,int *) ;
 void* stub16 (void*) ;
 void* stub17 (void*,int,int ) ;
 void* stub18 (void*) ;
 void* stub19 (void*,int ,int ) ;
 void* stub2 (void*) ;
 void* stub20 (void*,int ,int ,int ) ;
 void* stub21 (void*,int ) ;
 void* stub22 (void*) ;
 void* stub23 (void*,int ,int,int ) ;
 void* stub24 (void*) ;
 void* stub25 (void*) ;
 void* stub3 (void*,char const*,unsigned int,scalar_t__) ;
 void* stub4 (void*) ;
 void* stub5 (void*) ;
 void* stub6 (void*,int ,int ) ;
 void* stub7 (void*,int ) ;
 void* stub8 (void*,int ) ;
 void* stub9 (void*,int ) ;

__attribute__((used)) static bfd_boolean
debug_write_type (struct debug_handle *info,
    const struct debug_write_fns *fns, void *fhandle,
    struct debug_type *type, struct debug_name *name)
{
  unsigned int i;
  int is;
  const char *tag = ((void*)0);




  if ((type->kind == 139
       || type->kind == 132)
      && (type->u.knamed->name->mark == info->mark
   || (type->kind == 132
       && type->u.knamed->name != name)))
    {
      if (type->kind == 139)
 return (*fns->typedef_type) (fhandle, type->u.knamed->name->name);
      else
 {
   struct debug_type *real;
   unsigned int id;

   real = debug_get_real_type ((void *) info, type, ((void*)0));
   if (real == ((void*)0))
     return (*fns->empty_type) (fhandle);
   id = 0;
   if ((real->kind == 133
        || real->kind == 131
        || real->kind == 149
        || real->kind == 130)
       && real->u.kclass != ((void*)0))
     {
       if (real->u.kclass->id <= info->base_id)
  {
    if (! debug_set_class_id (info,
         type->u.knamed->name->name,
         real))
      return FALSE;
  }
       id = real->u.kclass->id;
     }

   return (*fns->tag_type) (fhandle, type->u.knamed->name->name, id,
       real->kind);
 }
    }





  if (name != ((void*)0))
    name->mark = info->mark;

  if (name != ((void*)0)
      && type->kind != 139
      && type->kind != 132)
    {
      assert (name->kind == DEBUG_OBJECT_TAG);
      tag = name->name;
    }

  switch (type->kind)
    {
    case 143:
      debug_error (_("debug_write_type: illegal type encountered"));
      return FALSE;
    case 142:
      if (*type->u.kindirect->slot == DEBUG_TYPE_NULL)
 return (*fns->empty_type) (fhandle);
      return debug_write_type (info, fns, fhandle, *type->u.kindirect->slot,
          name);
    case 129:
      return (*fns->void_type) (fhandle);
    case 141:
      return (*fns->int_type) (fhandle, type->size, type->u.kint);
    case 145:
      return (*fns->float_type) (fhandle, type->size);
    case 148:
      return (*fns->complex_type) (fhandle, type->size);
    case 150:
      return (*fns->bool_type) (fhandle, type->size);
    case 133:
    case 131:
      if (type->u.kclass != ((void*)0))
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
 }

      if (! (*fns->start_struct_type) (fhandle, tag,
           (type->u.kclass != ((void*)0)
     ? type->u.kclass->id
     : 0),
           type->kind == 133,
           type->size))
 return FALSE;
      if (type->u.kclass != ((void*)0)
   && type->u.kclass->fields != ((void*)0))
 {
   for (i = 0; type->u.kclass->fields[i] != ((void*)0); i++)
     {
       struct debug_field *f;

       f = type->u.kclass->fields[i];
       if (! debug_write_type (info, fns, fhandle, f->type,
          (struct debug_name *) ((void*)0))
    || ! (*fns->struct_field) (fhandle, f->name, f->u.f.bitpos,
          f->u.f.bitsize, f->visibility))
  return FALSE;
     }
 }
      return (*fns->end_struct_type) (fhandle);
    case 149:
    case 130:
      return debug_write_class_type (info, fns, fhandle, type, tag);
    case 146:
      if (type->u.kenum == ((void*)0))
 return (*fns->enum_type) (fhandle, tag, (const char **) ((void*)0),
      (bfd_signed_vma *) ((void*)0));
      return (*fns->enum_type) (fhandle, tag, type->u.kenum->names,
    type->u.kenum->values);
    case 137:
      if (! debug_write_type (info, fns, fhandle, type->u.kpointer,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->pointer_type) (fhandle);
    case 144:
      if (! debug_write_type (info, fns, fhandle,
         type->u.kfunction->return_type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      if (type->u.kfunction->arg_types == ((void*)0))
 is = -1;
      else
 {
   for (is = 0; type->u.kfunction->arg_types[is] != ((void*)0); is++)
     if (! debug_write_type (info, fns, fhandle,
        type->u.kfunction->arg_types[is],
        (struct debug_name *) ((void*)0)))
       return FALSE;
 }
      return (*fns->function_type) (fhandle, is,
        type->u.kfunction->varargs);
    case 135:
      if (! debug_write_type (info, fns, fhandle, type->u.kreference,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->reference_type) (fhandle);
    case 136:
      if (! debug_write_type (info, fns, fhandle, type->u.krange->type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->range_type) (fhandle, type->u.krange->lower,
     type->u.krange->upper);
    case 151:
      if (! debug_write_type (info, fns, fhandle, type->u.karray->element_type,
         (struct debug_name *) ((void*)0))
   || ! debug_write_type (info, fns, fhandle,
     type->u.karray->range_type,
     (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->array_type) (fhandle, type->u.karray->lower,
     type->u.karray->upper,
     type->u.karray->stringp);
    case 134:
      if (! debug_write_type (info, fns, fhandle, type->u.kset->type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->set_type) (fhandle, type->u.kset->bitstringp);
    case 138:
      if (! debug_write_type (info, fns, fhandle, type->u.koffset->base_type,
         (struct debug_name *) ((void*)0))
   || ! debug_write_type (info, fns, fhandle,
     type->u.koffset->target_type,
     (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->offset_type) (fhandle);
    case 140:
      if (! debug_write_type (info, fns, fhandle,
         type->u.kmethod->return_type,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      if (type->u.kmethod->arg_types == ((void*)0))
 is = -1;
      else
 {
   for (is = 0; type->u.kmethod->arg_types[is] != ((void*)0); is++)
     if (! debug_write_type (info, fns, fhandle,
        type->u.kmethod->arg_types[is],
        (struct debug_name *) ((void*)0)))
       return FALSE;
 }
      if (type->u.kmethod->domain_type != ((void*)0))
 {
   if (! debug_write_type (info, fns, fhandle,
      type->u.kmethod->domain_type,
      (struct debug_name *) ((void*)0)))
     return FALSE;
 }
      return (*fns->method_type) (fhandle,
      type->u.kmethod->domain_type != ((void*)0),
      is,
      type->u.kmethod->varargs);
    case 147:
      if (! debug_write_type (info, fns, fhandle, type->u.kconst,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->const_type) (fhandle);
    case 128:
      if (! debug_write_type (info, fns, fhandle, type->u.kvolatile,
         (struct debug_name *) ((void*)0)))
 return FALSE;
      return (*fns->volatile_type) (fhandle);
    case 139:
      return debug_write_type (info, fns, fhandle, type->u.knamed->type,
          (struct debug_name *) ((void*)0));
    case 132:
      return debug_write_type (info, fns, fhandle, type->u.knamed->type,
          type->u.knamed->name);
    default:
      abort ();
      return FALSE;
    }
}
