#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* type; } ;
struct TYPE_6__ {TYPE_2__ s_builtin; } ;
struct demangle_component {int /*<<< orphan*/  type; TYPE_3__ u; } ;
struct d_info {int /*<<< orphan*/  expansion; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_COMPLEX ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_IMAGINARY ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_POINTER ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_REFERENCE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_SUB_STD ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TEMPLATE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VENDOR_TYPE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/ * cplus_demangle_builtin_types ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct d_info*,int) ; 
 struct demangle_component* FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*) ; 
 struct demangle_component** FUNC6 (struct d_info*,struct demangle_component**,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC7 (struct d_info*) ; 
 struct demangle_component* FUNC8 (struct d_info*,int /*<<< orphan*/ *) ; 
 struct demangle_component* FUNC9 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 char FUNC10 (struct d_info*) ; 
 char FUNC11 (struct d_info*) ; 
 struct demangle_component* FUNC12 (struct d_info*) ; 
 struct demangle_component* FUNC13 (struct d_info*) ; 
 struct demangle_component* FUNC14 (struct d_info*,int /*<<< orphan*/ ) ; 
 struct demangle_component* FUNC15 (struct d_info*) ; 
 struct demangle_component* FUNC16 (struct d_info*) ; 

struct demangle_component *
FUNC17 (struct d_info *di)
{
  char peek;
  struct demangle_component *ret;
  int can_subst;

  /* The ABI specifies that when CV-qualifiers are used, the base type
     is substitutable, and the fully qualified type is substitutable,
     but the base type with a strict subset of the CV-qualifiers is
     not substitutable.  The natural recursive implementation of the
     CV-qualifiers would cause subsets to be substitutable, so instead
     we pull them all off now.

     FIXME: The ABI says that order-insensitive vendor qualifiers
     should be handled in the same way, but we have no way to tell
     which vendor qualifiers are order-insensitive and which are
     order-sensitive.  So we just assume that they are all
     order-sensitive.  g++ 3.4 supports only one vendor qualifier,
     __vector, and it treats it as order-sensitive when mangling
     names.  */

  peek = FUNC10 (di);
  if (peek == 'r' || peek == 'V' || peek == 'K')
    {
      struct demangle_component **pret;

      pret = FUNC6 (di, &ret, 0);
      if (pret == NULL)
	return NULL;
      *pret = FUNC17 (di);
      if (! *pret || ! FUNC2 (di, ret))
	return NULL;
      return ret;
    }

  can_subst = 1;

  switch (peek)
    {
    case 'a': case 'b': case 'c': case 'd': case 'e': case 'f': case 'g':
    case 'h': case 'i': case 'j':           case 'l': case 'm': case 'n':
    case 'o':                               case 's': case 't':
    case 'v': case 'w': case 'x': case 'y': case 'z':
      ret = FUNC8 (di,
				 &cplus_demangle_builtin_types[peek - 'a']);
      di->expansion += ret->u.s_builtin.type->len;
      can_subst = 0;
      FUNC3 (di, 1);
      break;

    case 'u':
      FUNC3 (di, 1);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_VENDOR_TYPE,
			 FUNC13 (di), NULL);
      break;

    case 'F':
      ret = FUNC7 (di);
      break;

    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
    case 'N':
    case 'Z':
      ret = FUNC5 (di);
      break;

    case 'A':
      ret = FUNC4 (di);
      break;

    case 'M':
      ret = FUNC12 (di);
      break;

    case 'T':
      ret = FUNC16 (di);
      if (FUNC10 (di) == 'I')
	{
	  /* This is <template-template-param> <template-args>.  The
	     <template-template-param> part is a substitution
	     candidate.  */
	  if (! FUNC2 (di, ret))
	    return NULL;
	  ret = FUNC9 (di, DEMANGLE_COMPONENT_TEMPLATE, ret,
			     FUNC15 (di));
	}
      break;

    case 'S':
      /* If this is a special substitution, then it is the start of
	 <class-enum-type>.  */
      {
	char peek_next;

	peek_next = FUNC11 (di);
	if (FUNC0 (peek_next)
	    || peek_next == '_'
	    || FUNC1 (peek_next))
	  {
	    ret = FUNC14 (di, 0);
	    /* The substituted name may have been a template name and
	       may be followed by tepmlate args.  */
	    if (FUNC10 (di) == 'I')
	      ret = FUNC9 (di, DEMANGLE_COMPONENT_TEMPLATE, ret,
				 FUNC15 (di));
	    else
	      can_subst = 0;
	  }
	else
	  {
	    ret = FUNC5 (di);
	    /* If the substitution was a complete type, then it is not
	       a new substitution candidate.  However, if the
	       substitution was followed by template arguments, then
	       the whole thing is a substitution candidate.  */
	    if (ret != NULL && ret->type == DEMANGLE_COMPONENT_SUB_STD)
	      can_subst = 0;
	  }
      }
      break;

    case 'P':
      FUNC3 (di, 1);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_POINTER,
			 FUNC17 (di), NULL);
      break;

    case 'R':
      FUNC3 (di, 1);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_REFERENCE,
			 FUNC17 (di), NULL);
      break;

    case 'C':
      FUNC3 (di, 1);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_COMPLEX,
			 FUNC17 (di), NULL);
      break;

    case 'G':
      FUNC3 (di, 1);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_IMAGINARY,
			 FUNC17 (di), NULL);
      break;

    case 'U':
      FUNC3 (di, 1);
      ret = FUNC13 (di);
      ret = FUNC9 (di, DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL,
			 FUNC17 (di), ret);
      break;

    default:
      return NULL;
    }

  if (can_subst)
    {
      if (! FUNC2 (di, ret))
	return NULL;
    }

  return ret;
}