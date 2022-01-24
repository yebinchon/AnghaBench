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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ (* cdtor_returns_this ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DELETE_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RETURN_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdtor_label ; 
 int /*<<< orphan*/  current_class_ptr ; 
 int /*<<< orphan*/  current_class_type ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  current_in_charge_parm ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ FUNC14 () ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC15 (void)
{
  tree exprstmt;

  /* Any return from a destructor will end up here; that way all base
     and member cleanups will be run when the function returns.  */
  FUNC4 (FUNC8 (LABEL_EXPR, cdtor_label));

  /* In a virtual destructor, we must call delete.  */
  if (FUNC2 (current_function_decl))
    {
      tree if_stmt;
      tree virtual_size = FUNC9 (current_class_type);

      /* [class.dtor]

      At the point of definition of a virtual destructor (including
      an implicit definition), non-placement operator delete shall
      be looked up in the scope of the destructor's class and if
      found shall be accessible and unambiguous.  */
      exprstmt = FUNC7(DELETE_EXPR, current_class_ptr,
				      virtual_size,
				      /*global_p=*/false,
				      /*placement=*/NULL_TREE,
				      /*alloc_fn=*/NULL_TREE);

      if_stmt = FUNC5 ();
      FUNC12 (FUNC6 (BIT_AND_EXPR, integer_type_node,
				   current_in_charge_parm,
				   integer_one_node),
			   if_stmt);
      FUNC10 (exprstmt);
      FUNC13 (if_stmt);
      FUNC11 (if_stmt);
    }

  if (targetm.cxx.cdtor_returns_this ())
    {
      tree val;

      val = FUNC0 (current_function_decl);
      val = FUNC6 (MODIFY_EXPR, FUNC3 (val),
		    FUNC1 (current_function_decl), val);
      /* Return the address of the object.  */
      exprstmt = FUNC8 (RETURN_EXPR, val);
      FUNC4 (exprstmt);
    }
}