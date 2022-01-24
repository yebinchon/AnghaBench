#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct debug_write_fns {void* (* typedef_type ) (void*,char const*) ;void* (* empty_type ) (void*) ;void* (* tag_type ) (void*,char const*,unsigned int,scalar_t__) ;void* (* void_type ) (void*) ;void* (* int_type ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* (* float_type ) (void*,int /*<<< orphan*/ ) ;void* (* complex_type ) (void*,int /*<<< orphan*/ ) ;void* (* bool_type ) (void*,int /*<<< orphan*/ ) ;void* (* end_struct_type ) (void*) ;void* (* enum_type ) (void*,char const*,char const**,int /*<<< orphan*/ *) ;void* (* pointer_type ) (void*) ;void* (* function_type ) (void*,int,int /*<<< orphan*/ ) ;void* (* reference_type ) (void*) ;void* (* range_type ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* (* array_type ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;void* (* set_type ) (void*,int /*<<< orphan*/ ) ;void* (* offset_type ) (void*) ;void* (* method_type ) (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;void* (* const_type ) (void*) ;void* (* volatile_type ) (void*) ;int /*<<< orphan*/  (* struct_field ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* start_struct_type ) (void*,char const*,unsigned int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_12__* knamed; struct debug_type* kvolatile; struct debug_type* kconst; TYPE_11__* kmethod; TYPE_10__* koffset; TYPE_9__* kset; TYPE_8__* karray; TYPE_7__* krange; struct debug_type* kreference; TYPE_6__* kfunction; struct debug_type* kpointer; TYPE_5__* kenum; TYPE_2__* kclass; int /*<<< orphan*/  kint; TYPE_1__* kindirect; } ;
struct debug_type {int kind; TYPE_13__ u; int /*<<< orphan*/  size; } ;
struct debug_name {scalar_t__ mark; char const* name; scalar_t__ kind; } ;
struct debug_handle {scalar_t__ mark; unsigned int base_id; } ;
struct TYPE_20__ {int /*<<< orphan*/  bitsize; int /*<<< orphan*/  bitpos; } ;
struct TYPE_21__ {TYPE_3__ f; } ;
struct debug_field {int /*<<< orphan*/  visibility; TYPE_4__ u; int /*<<< orphan*/  name; struct debug_type* type; } ;
typedef  int /*<<< orphan*/  bfd_signed_vma ;
typedef  void* bfd_boolean ;
struct TYPE_26__ {int /*<<< orphan*/  bitstringp; struct debug_type* type; } ;
struct TYPE_25__ {int /*<<< orphan*/  stringp; int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; struct debug_type* range_type; struct debug_type* element_type; } ;
struct TYPE_24__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; struct debug_type* type; } ;
struct TYPE_23__ {int /*<<< orphan*/  varargs; struct debug_type** arg_types; struct debug_type* return_type; } ;
struct TYPE_22__ {char const** names; int /*<<< orphan*/ * values; } ;
struct TYPE_19__ {unsigned int id; scalar_t__ mark; struct debug_field** fields; } ;
struct TYPE_18__ {struct debug_type** slot; } ;
struct TYPE_16__ {struct debug_name* name; struct debug_type* type; } ;
struct TYPE_15__ {int /*<<< orphan*/  varargs; struct debug_type* domain_type; struct debug_type** arg_types; struct debug_type* return_type; } ;
struct TYPE_14__ {struct debug_type* target_type; struct debug_type* base_type; } ;

/* Variables and functions */
#define  DEBUG_KIND_ARRAY 151 
#define  DEBUG_KIND_BOOL 150 
#define  DEBUG_KIND_CLASS 149 
#define  DEBUG_KIND_COMPLEX 148 
#define  DEBUG_KIND_CONST 147 
#define  DEBUG_KIND_ENUM 146 
#define  DEBUG_KIND_FLOAT 145 
#define  DEBUG_KIND_FUNCTION 144 
#define  DEBUG_KIND_ILLEGAL 143 
#define  DEBUG_KIND_INDIRECT 142 
#define  DEBUG_KIND_INT 141 
#define  DEBUG_KIND_METHOD 140 
#define  DEBUG_KIND_NAMED 139 
#define  DEBUG_KIND_OFFSET 138 
#define  DEBUG_KIND_POINTER 137 
#define  DEBUG_KIND_RANGE 136 
#define  DEBUG_KIND_REFERENCE 135 
#define  DEBUG_KIND_SET 134 
#define  DEBUG_KIND_STRUCT 133 
#define  DEBUG_KIND_TAGGED 132 
#define  DEBUG_KIND_UNION 131 
#define  DEBUG_KIND_UNION_CLASS 130 
#define  DEBUG_KIND_VOID 129 
#define  DEBUG_KIND_VOLATILE 128 
 scalar_t__ DEBUG_OBJECT_TAG ; 
 struct debug_type* DEBUG_TYPE_NULL ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct debug_type* FUNC4 (void*,struct debug_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct debug_handle*,char const*,struct debug_type*) ; 
 void* FUNC6 (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_type*,char const*) ; 
 void* FUNC7 (void*,char const*) ; 
 void* FUNC8 (void*,char const*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,char const*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (void*) ; 
 void* FUNC12 (void*,char const*,char const**,int /*<<< orphan*/ *) ; 
 void* FUNC13 (void*,char const*,char const**,int /*<<< orphan*/ *) ; 
 void* FUNC14 (void*) ; 
 void* FUNC15 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC16 (void*) ; 
 void* FUNC17 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC18 (void*) ; 
 void* FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC20 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC21 (void*) ; 
 void* FUNC22 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC23 (void*) ; 
 void* FUNC24 (void*) ; 
 void* FUNC25 (void*,char const*,unsigned int,scalar_t__) ; 
 void* FUNC26 (void*) ; 
 void* FUNC27 (void*) ; 
 void* FUNC28 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC29 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC30 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC31 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC32 (struct debug_handle *info,
		  const struct debug_write_fns *fns, void *fhandle,
		  struct debug_type *type, struct debug_name *name)
{
  unsigned int i;
  int is;
  const char *tag = NULL;

  /* If we have a name for this type, just output it.  We only output
     typedef names after they have been defined.  We output type tags
     whenever we are not actually defining them.  */
  if ((type->kind == DEBUG_KIND_NAMED
       || type->kind == DEBUG_KIND_TAGGED)
      && (type->u.knamed->name->mark == info->mark
	  || (type->kind == DEBUG_KIND_TAGGED
	      && type->u.knamed->name != name)))
    {
      if (type->kind == DEBUG_KIND_NAMED)
	return (*fns->typedef_type) (fhandle, type->u.knamed->name->name);
      else
	{
	  struct debug_type *real;
	  unsigned int id;

	  real = FUNC4 ((void *) info, type, NULL);
	  if (real == NULL)
	    return (*fns->empty_type) (fhandle);
	  id = 0;
	  if ((real->kind == DEBUG_KIND_STRUCT
	       || real->kind == DEBUG_KIND_UNION
	       || real->kind == DEBUG_KIND_CLASS
	       || real->kind == DEBUG_KIND_UNION_CLASS)
	      && real->u.kclass != NULL)
	    {
	      if (real->u.kclass->id <= info->base_id)
		{
		  if (! FUNC5 (info,
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

  /* Mark the name after we have already looked for a known name, so
     that we don't just define a type in terms of itself.  We need to
     mark the name here so that a struct containing a pointer to
     itself will work.  */
  if (name != NULL)
    name->mark = info->mark;

  if (name != NULL
      && type->kind != DEBUG_KIND_NAMED
      && type->kind != DEBUG_KIND_TAGGED)
    {
      FUNC2 (name->kind == DEBUG_OBJECT_TAG);
      tag = name->name;
    }

  switch (type->kind)
    {
    case DEBUG_KIND_ILLEGAL:
      FUNC3 (FUNC0("debug_write_type: illegal type encountered"));
      return FALSE;
    case DEBUG_KIND_INDIRECT:
      if (*type->u.kindirect->slot == DEBUG_TYPE_NULL)
	return (*fns->empty_type) (fhandle);
      return FUNC32 (info, fns, fhandle, *type->u.kindirect->slot,
			       name);
    case DEBUG_KIND_VOID:
      return (*fns->void_type) (fhandle);
    case DEBUG_KIND_INT:
      return (*fns->int_type) (fhandle, type->size, type->u.kint);
    case DEBUG_KIND_FLOAT:
      return (*fns->float_type) (fhandle, type->size);
    case DEBUG_KIND_COMPLEX:
      return (*fns->complex_type) (fhandle, type->size);
    case DEBUG_KIND_BOOL:
      return (*fns->bool_type) (fhandle, type->size);
    case DEBUG_KIND_STRUCT:
    case DEBUG_KIND_UNION:
      if (type->u.kclass != NULL)
	{
	  if (type->u.kclass->id <= info->base_id)
	    {
	      if (! FUNC5 (info, tag, type))
		return FALSE;
	    }

	  if (info->mark == type->u.kclass->mark)
	    {
	      /* We are currently outputting this struct, or we have
		 already output it.  I don't know if this can happen,
		 but it can happen for a class.  */
	      FUNC2 (type->u.kclass->id > info->base_id);
	      return (*fns->tag_type) (fhandle, tag, type->u.kclass->id,
				       type->kind);
	    }
	  type->u.kclass->mark = info->mark;
	}

      if (! (*fns->start_struct_type) (fhandle, tag,
				       (type->u.kclass != NULL
					? type->u.kclass->id
					: 0),
				       type->kind == DEBUG_KIND_STRUCT,
				       type->size))
	return FALSE;
      if (type->u.kclass != NULL
	  && type->u.kclass->fields != NULL)
	{
	  for (i = 0; type->u.kclass->fields[i] != NULL; i++)
	    {
	      struct debug_field *f;

	      f = type->u.kclass->fields[i];
	      if (! FUNC32 (info, fns, fhandle, f->type,
				      (struct debug_name *) NULL)
		  || ! (*fns->struct_field) (fhandle, f->name, f->u.f.bitpos,
					     f->u.f.bitsize, f->visibility))
		return FALSE;
	    }
	}
      return (*fns->end_struct_type) (fhandle);
    case DEBUG_KIND_CLASS:
    case DEBUG_KIND_UNION_CLASS:
      return FUNC6 (info, fns, fhandle, type, tag);
    case DEBUG_KIND_ENUM:
      if (type->u.kenum == NULL)
	return (*fns->enum_type) (fhandle, tag, (const char **) NULL,
				  (bfd_signed_vma *) NULL);
      return (*fns->enum_type) (fhandle, tag, type->u.kenum->names,
				type->u.kenum->values);
    case DEBUG_KIND_POINTER:
      if (! FUNC32 (info, fns, fhandle, type->u.kpointer,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->pointer_type) (fhandle);
    case DEBUG_KIND_FUNCTION:
      if (! FUNC32 (info, fns, fhandle,
			      type->u.kfunction->return_type,
			      (struct debug_name *) NULL))
	return FALSE;
      if (type->u.kfunction->arg_types == NULL)
	is = -1;
      else
	{
	  for (is = 0; type->u.kfunction->arg_types[is] != NULL; is++)
	    if (! FUNC32 (info, fns, fhandle,
				    type->u.kfunction->arg_types[is],
				    (struct debug_name *) NULL))
	      return FALSE;
	}
      return (*fns->function_type) (fhandle, is,
				    type->u.kfunction->varargs);
    case DEBUG_KIND_REFERENCE:
      if (! FUNC32 (info, fns, fhandle, type->u.kreference,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->reference_type) (fhandle);
    case DEBUG_KIND_RANGE:
      if (! FUNC32 (info, fns, fhandle, type->u.krange->type,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->range_type) (fhandle, type->u.krange->lower,
				 type->u.krange->upper);
    case DEBUG_KIND_ARRAY:
      if (! FUNC32 (info, fns, fhandle, type->u.karray->element_type,
			      (struct debug_name *) NULL)
	  || ! FUNC32 (info, fns, fhandle,
				 type->u.karray->range_type,
				 (struct debug_name *) NULL))
	return FALSE;
      return (*fns->array_type) (fhandle, type->u.karray->lower,
				 type->u.karray->upper,
				 type->u.karray->stringp);
    case DEBUG_KIND_SET:
      if (! FUNC32 (info, fns, fhandle, type->u.kset->type,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->set_type) (fhandle, type->u.kset->bitstringp);
    case DEBUG_KIND_OFFSET:
      if (! FUNC32 (info, fns, fhandle, type->u.koffset->base_type,
			      (struct debug_name *) NULL)
	  || ! FUNC32 (info, fns, fhandle,
				 type->u.koffset->target_type,
				 (struct debug_name *) NULL))
	return FALSE;
      return (*fns->offset_type) (fhandle);
    case DEBUG_KIND_METHOD:
      if (! FUNC32 (info, fns, fhandle,
			      type->u.kmethod->return_type,
			      (struct debug_name *) NULL))
	return FALSE;
      if (type->u.kmethod->arg_types == NULL)
	is = -1;
      else
	{
	  for (is = 0; type->u.kmethod->arg_types[is] != NULL; is++)
	    if (! FUNC32 (info, fns, fhandle,
				    type->u.kmethod->arg_types[is],
				    (struct debug_name *) NULL))
	      return FALSE;
	}
      if (type->u.kmethod->domain_type != NULL)
	{
	  if (! FUNC32 (info, fns, fhandle,
				  type->u.kmethod->domain_type,
				  (struct debug_name *) NULL))
	    return FALSE;
	}
      return (*fns->method_type) (fhandle,
				  type->u.kmethod->domain_type != NULL,
				  is,
				  type->u.kmethod->varargs);
    case DEBUG_KIND_CONST:
      if (! FUNC32 (info, fns, fhandle, type->u.kconst,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->const_type) (fhandle);
    case DEBUG_KIND_VOLATILE:
      if (! FUNC32 (info, fns, fhandle, type->u.kvolatile,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->volatile_type) (fhandle);
    case DEBUG_KIND_NAMED:
      return FUNC32 (info, fns, fhandle, type->u.knamed->type,
			       (struct debug_name *) NULL);
    case DEBUG_KIND_TAGGED:
      return FUNC32 (info, fns, fhandle, type->u.knamed->type,
			       type->u.knamed->name);
    default:
      FUNC1 ();
      return FALSE;
    }
}