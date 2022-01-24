#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__* specs; scalar_t__ type; scalar_t__ storage_class; scalar_t__ redefined_builtin_type; scalar_t__ multiple_types_p; } ;
typedef  TYPE_1__ cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ current_class_type ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ ds_const ; 
 scalar_t__ ds_explicit ; 
 scalar_t__ ds_friend ; 
 scalar_t__ ds_inline ; 
 scalar_t__ ds_restrict ; 
 scalar_t__ ds_thread ; 
 scalar_t__ ds_typedef ; 
 scalar_t__ ds_virtual ; 
 scalar_t__ ds_volatile ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  in_system_header ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

tree
FUNC9 (cp_decl_specifier_seq *declspecs)
{
  int saw_friend = declspecs->specs[(int)ds_friend] != 0;
  int saw_typedef = declspecs->specs[(int)ds_typedef] != 0;
  /* If a class, struct, or enum type is declared by the DECLSPECS
     (i.e, if a class-specifier, enum-specifier, or non-typename
     elaborated-type-specifier appears in the DECLSPECS),
     DECLARED_TYPE is set to the corresponding type.  */
  tree declared_type = NULL_TREE;
  bool error_p = false;

  if (declspecs->multiple_types_p)
    FUNC7 ("multiple types in one declaration");
  else if (declspecs->redefined_builtin_type)
    {
      if (!in_system_header)
	FUNC8 ("redeclaration of C++ built-in type %qT",
		 declspecs->redefined_builtin_type);
      return NULL_TREE;
    }

  if (declspecs->type
      && FUNC5 (declspecs->type)
      && ((FUNC3 (declspecs->type) != TYPENAME_TYPE
	   && FUNC0 (declspecs->type))
	  || FUNC3 (declspecs->type) == ENUMERAL_TYPE))
    declared_type = declspecs->type;
  else if (declspecs->type == error_mark_node)
    error_p = true;
  if (declared_type == NULL_TREE && ! saw_friend && !error_p)
    FUNC8 ("declaration does not declare anything");
  /* Check for an anonymous union.  */
  else if (declared_type && FUNC1 (FUNC3 (declared_type))
	   && FUNC4 (declared_type))
    {
      /* 7/3 In a simple-declaration, the optional init-declarator-list
	 can be omitted only when declaring a class (clause 9) or
	 enumeration (7.2), that is, when the decl-specifier-seq contains
	 either a class-specifier, an elaborated-type-specifier with
	 a class-key (9.1), or an enum-specifier.  In these cases and
	 whenever a class-specifier or enum-specifier is present in the
	 decl-specifier-seq, the identifiers in these specifiers are among
	 the names being declared by the declaration (as class-name,
	 enum-names, or enumerators, depending on the syntax).  In such
	 cases, and except for the declaration of an unnamed bit-field (9.6),
	 the decl-specifier-seq shall introduce one or more names into the
	 program, or shall redeclare a name introduced by a previous
	 declaration.  [Example:
	     enum { };			// ill-formed
	     typedef class { };		// ill-formed
	 --end example]  */
      if (saw_typedef)
	{
	  FUNC7 ("missing type-name in typedef-declaration");
	  return NULL_TREE;
	}
      /* Anonymous unions are objects, so they can have specifiers.  */;
      FUNC2 (declared_type);

      if (FUNC3 (declared_type) != UNION_TYPE && pedantic
	  && !in_system_header)
	FUNC8 ("ISO C++ prohibits anonymous structs");
    }

  else
    {
      if (declspecs->specs[(int)ds_inline]
	  || declspecs->specs[(int)ds_virtual])
	FUNC7 ("%qs can only be specified for functions",
	       declspecs->specs[(int)ds_inline]
	       ? "inline" : "virtual");
      else if (saw_friend
	       && (!current_class_type
		   || FUNC6 () != current_class_type))
	FUNC7 ("%<friend%> can only be specified inside a class");
      else if (declspecs->specs[(int)ds_explicit])
	FUNC7 ("%<explicit%> can only be specified for constructors");
      else if (declspecs->storage_class)
	FUNC7 ("a storage class can only be specified for objects "
	       "and functions");
      else if (declspecs->specs[(int)ds_const]
	       || declspecs->specs[(int)ds_volatile]
	       || declspecs->specs[(int)ds_restrict]
	       || declspecs->specs[(int)ds_thread])
	FUNC7 ("qualifiers can only be specified for objects "
	       "and functions");
    }

  return declared_type;
}