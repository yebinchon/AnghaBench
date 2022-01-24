#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* tree ;
typedef  int special_function_kind ;
struct TYPE_3__ {int /*<<< orphan*/  (* cdtor_returns_this ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
#define  sfk_constructor 130 
#define  sfk_conversion 129 
#define  sfk_destructor 128 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__ targetm ; 
 char* void_type_node ; 

__attribute__((used)) static tree
FUNC8 (special_function_kind sfk,
				    tree type,
				    tree optype)
{
  switch (sfk)
    {
    case sfk_constructor:
      if (type)
	FUNC2 ("return type specification for constructor invalid");

      if (targetm.cxx.cdtor_returns_this () && !FUNC0 (optype))
	type = FUNC1 (optype);
      else
	type = void_type_node;
      break;

    case sfk_destructor:
      if (type)
	FUNC2 ("return type specification for destructor invalid");
      /* We can't use the proper return type here because we run into
	 problems with ambiguous bases and covariant returns.
	 Java classes are left unchanged because (void *) isn't a valid
	 Java type, and we don't want to change the Java ABI.  */
      if (targetm.cxx.cdtor_returns_this () && !FUNC0 (optype))
	type = FUNC1 (void_type_node);
      else
	type = void_type_node;
      break;

    case sfk_conversion:
      if (type && !FUNC5 (type, optype))
	FUNC2 ("operator %qT declared to return %qT", optype, type);
      else if (type)
	FUNC4 ("return type specified for %<operator %T%>",  optype);
      type = optype;
      break;

    default:
      FUNC3 ();
    }

  return type;
}