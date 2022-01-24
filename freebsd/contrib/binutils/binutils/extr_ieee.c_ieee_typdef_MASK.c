#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee_write_type {unsigned int indx; char const* name; int /*<<< orphan*/  unsignedp; int /*<<< orphan*/  size; scalar_t__ localp; } ;
struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct ieee_name_type {unsigned int id; struct ieee_name_type* next; int /*<<< orphan*/  kind; struct ieee_write_type type; } ;
struct ieee_handle {int /*<<< orphan*/  typedefs; TYPE_1__* type_stack; } ;
struct ieee_buflist {int dummy; } ;
typedef  enum builtin_types { ____Placeholder_builtin_types } builtin_types ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_2__ {struct ieee_write_type type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_KIND_ILLEGAL ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 scalar_t__ builtin_bcd_float ; 
#define  builtin_char 149 
#define  builtin_double 148 
#define  builtin_float 147 
#define  builtin_int 146 
#define  builtin_long 145 
#define  builtin_long_double 144 
#define  builtin_long_long_double 143 
#define  builtin_short 142 
#define  builtin_short_int 141 
#define  builtin_signed_char 140 
#define  builtin_signed_long 139 
#define  builtin_signed_long_long 138 
#define  builtin_signed_short 137 
#define  builtin_signed_short_int 136 
#define  builtin_unsigned 135 
#define  builtin_unsigned_char 134 
#define  builtin_unsigned_int 133 
#define  builtin_unsigned_long 132 
#define  builtin_unsigned_long_long 131 
#define  builtin_unsigned_short 130 
#define  builtin_unsigned_short_int 129 
#define  builtin_void 128 
 int /*<<< orphan*/  FUNC0 (struct ieee_handle*,char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct ieee_buflist*) ; 
 struct ieee_name_type_hash_entry* FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__,scalar_t__) ; 
 unsigned int FUNC2 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_name_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, const char *name)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_write_type type;
  unsigned int indx;
  bfd_boolean found;
  bfd_boolean localp;
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  type = info->type_stack->type;
  indx = type.indx;

  /* If this is a simple builtin type using a builtin name, we don't
     want to output the typedef itself.  We also want to change the
     type index to correspond to the name being used.  We recognize
     names used in stabs debugging output even if they don't exactly
     correspond to the names used for the IEEE builtin types.  */
  found = FALSE;
  if (indx <= (unsigned int) builtin_bcd_float)
    {
      switch ((enum builtin_types) indx)
	{
	default:
	  break;

	case builtin_void:
	  if (FUNC6 (name, "void") == 0)
	    found = TRUE;
	  break;

	case builtin_signed_char:
	case builtin_char:
	  if (FUNC6 (name, "signed char") == 0)
	    {
	      indx = (unsigned int) builtin_signed_char;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "char") == 0)
	    {
	      indx = (unsigned int) builtin_char;
	      found = TRUE;
	    }
	  break;

	case builtin_unsigned_char:
	  if (FUNC6 (name, "unsigned char") == 0)
	    found = TRUE;
	  break;

	case builtin_signed_short_int:
	case builtin_short:
	case builtin_short_int:
	case builtin_signed_short:
	  if (FUNC6 (name, "signed short int") == 0)
	    {
	      indx = (unsigned int) builtin_signed_short_int;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "short") == 0)
	    {
	      indx = (unsigned int) builtin_short;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "short int") == 0)
	    {
	      indx = (unsigned int) builtin_short_int;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "signed short") == 0)
	    {
	      indx = (unsigned int) builtin_signed_short;
	      found = TRUE;
	    }
	  break;

	case builtin_unsigned_short_int:
	case builtin_unsigned_short:
	  if (FUNC6 (name, "unsigned short int") == 0
	      || FUNC6 (name, "short unsigned int") == 0)
	    {
	      indx = builtin_unsigned_short_int;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "unsigned short") == 0)
	    {
	      indx = builtin_unsigned_short;
	      found = TRUE;
	    }
	  break;

	case builtin_signed_long:
	case builtin_int: /* FIXME: Size depends upon architecture.  */
	case builtin_long:
	  if (FUNC6 (name, "signed long") == 0)
	    {
	      indx = builtin_signed_long;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "int") == 0)
	    {
	      indx = builtin_int;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "long") == 0
		   || FUNC6 (name, "long int") == 0)
	    {
	      indx = builtin_long;
	      found = TRUE;
	    }
	  break;

	case builtin_unsigned_long:
	case builtin_unsigned: /* FIXME: Size depends upon architecture.  */
	case builtin_unsigned_int: /* FIXME: Like builtin_unsigned.  */
	  if (FUNC6 (name, "unsigned long") == 0
	      || FUNC6 (name, "long unsigned int") == 0)
	    {
	      indx = builtin_unsigned_long;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "unsigned") == 0)
	    {
	      indx = builtin_unsigned;
	      found = TRUE;
	    }
	  else if (FUNC6 (name, "unsigned int") == 0)
	    {
	      indx = builtin_unsigned_int;
	      found = TRUE;
	    }
	  break;

	case builtin_signed_long_long:
	  if (FUNC6 (name, "signed long long") == 0
	      || FUNC6 (name, "long long int") == 0)
	    found = TRUE;
	  break;

	case builtin_unsigned_long_long:
	  if (FUNC6 (name, "unsigned long long") == 0
	      || FUNC6 (name, "long long unsigned int") == 0)
	    found = TRUE;
	  break;

	case builtin_float:
	  if (FUNC6 (name, "float") == 0)
	    found = TRUE;
	  break;

	case builtin_double:
	  if (FUNC6 (name, "double") == 0)
	    found = TRUE;
	  break;

	case builtin_long_double:
	  if (FUNC6 (name, "long double") == 0)
	    found = TRUE;
	  break;

	case builtin_long_long_double:
	  if (FUNC6 (name, "long long double") == 0)
	    found = TRUE;
	  break;
	}

      if (found)
	type.indx = indx;
    }

  h = FUNC1 (&info->typedefs, name, TRUE, FALSE);
  if (h == NULL)
    return FALSE;

  /* See if we have already defined this type with this name.  */
  localp = type.localp;
  for (nt = h->types; nt != NULL; nt = nt->next)
    {
      if (nt->id == indx)
	{
	  /* If this is a global definition, then we don't need to
	     do anything here.  */
	  if (! nt->type.localp)
	    {
	      FUNC3 (info);
	      return TRUE;
	    }
	}
      else
	{
	  /* This is a duplicate definition, so make this one local.  */
	  localp = TRUE;
	}
    }

  /* We need to add a new typedef for this type.  */

  nt = (struct ieee_name_type *) FUNC7 (sizeof *nt);
  FUNC5 (nt, 0, sizeof *nt);
  nt->id = indx;
  nt->type = type;
  nt->type.name = name;
  nt->type.localp = localp;
  nt->kind = DEBUG_KIND_ILLEGAL;

  nt->next = h->types;
  h->types = nt;

  if (found)
    {
      /* This is one of the builtin typedefs, so we don't need to
         actually define it.  */
      FUNC3 (info);
      return TRUE;
    }

  indx = FUNC2 (info);

  if (! FUNC0 (info, name, (unsigned int) -1, type.size,
				type.unsignedp,	localp,
				(struct ieee_buflist *) NULL)
      || ! FUNC4 (info, 'T')
      || ! FUNC4 (info, indx))
    return FALSE;

  /* Remove the type we just added to the type stack.  This should not
     be ieee_pop_unused_type, since the type is used, we just don't
     need it now.  */
  (void) FUNC2 (info);

  return TRUE;
}