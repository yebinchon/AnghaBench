#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_7__ {scalar_t__ kind; scalar_t__ type; TYPE_1__ u; scalar_t__ check_copy_constructor_p; scalar_t__ bad_p; } ;
typedef  TYPE_2__ conversion ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  INIT_EXPR ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int TYPE_QUAL_CONST ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  at_eof ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ ck_base ; 
 scalar_t__ ck_ref_bind ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 TYPE_2__* FUNC26 (scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  static_aggregates ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

tree
FUNC29 (tree type, tree expr, tree decl, tree *cleanup)
{
  conversion *conv;
  void *p;

  if (type == error_mark_node || FUNC18 (expr))
    return error_mark_node;

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC12 (0);

  conv = FUNC26 (type, FUNC1 (expr), expr, /*c_cast_p=*/false,
			    LOOKUP_NORMAL);
  if (!conv || conv->bad_p)
    {
      if (!(FUNC3 (FUNC1 (type)) & TYPE_QUAL_CONST)
	  && !FUNC25 (expr))
	FUNC17 ("invalid initialization of non-const reference of "
	       "type %qT from a temporary of type %qT",
	       type, FUNC1 (expr));
      else
	FUNC17 ("invalid initialization of reference of type "
	       "%qT from expression of type %qT", type,
	       FUNC1 (expr));
      return error_mark_node;
    }

  /* If DECL is non-NULL, then this special rule applies:

       [class.temporary]

       The temporary to which the reference is bound or the temporary
       that is the complete object to which the reference is bound
       persists for the lifetime of the reference.

       The temporaries created during the evaluation of the expression
       initializing the reference, except the temporary to which the
       reference is bound, are destroyed at the end of the
       full-expression in which they are created.

     In that case, we store the converted expression into a new
     VAR_DECL in a new scope.

     However, we want to be careful not to create temporaries when
     they are not required.  For example, given:

       struct B {};
       struct D : public B {};
       D f();
       const B& b = f();

     there is no need to copy the return value from "f"; we can just
     extend its lifetime.  Similarly, given:

       struct S {};
       struct T { operator S(); };
       T t;
       const S& s = t;

    we can extend the lifetime of the return value of the conversion
    operator.  */
  FUNC19 (conv->kind == ck_ref_bind);
  if (decl)
    {
      tree var;
      tree base_conv_type;

      /* Skip over the REF_BIND.  */
      conv = conv->u.next;
      /* If the next conversion is a BASE_CONV, skip that too -- but
	 remember that the conversion was required.  */
      if (conv->kind == ck_base)
	{
	  if (conv->check_copy_constructor_p)
	    FUNC11 (FUNC1 (expr), expr);
	  base_conv_type = conv->type;
	  conv = conv->u.next;
	}
      else
	base_conv_type = NULL_TREE;
      /* Perform the remainder of the conversion.  */
      expr = FUNC14 (conv, expr,
				/*fn=*/NULL_TREE, /*argnum=*/0,
				/*inner=*/-1,
				/*issue_conversion_warnings=*/true,
				/*c_cast_p=*/false);
      if (FUNC18 (expr))
	expr = error_mark_node;
      else
	{
	  if (!FUNC25 (expr))
	    {
	      tree init;
	      tree type;

	      /* Create the temporary variable.  */
	      type = FUNC1 (expr);
	      var = FUNC22 (decl, type);
	      FUNC21 (var, 0);
	      /* If the rvalue is the result of a function call it will be
		 a TARGET_EXPR.  If it is some other construct (such as a
		 member access expression where the underlying object is
		 itself the result of a function call), turn it into a
		 TARGET_EXPR here.  It is important that EXPR be a
		 TARGET_EXPR below since otherwise the INIT_EXPR will
		 attempt to make a bitwise copy of EXPR to initialize
		 VAR.  */
	      if (FUNC0 (expr) != TARGET_EXPR)
		expr = FUNC20 (expr);
	      /* Create the INIT_EXPR that will initialize the temporary
		 variable.  */
	      init = FUNC6 (INIT_EXPR, type, var, expr);
	      if (FUNC5 ())
		{
		  FUNC4 (var);
		  *cleanup = FUNC16 (var);

		  /* We must be careful to destroy the temporary only
		     after its initialization has taken place.  If the
		     initialization throws an exception, then the
		     destructor should not be run.  We cannot simply
		     transform INIT into something like:

			 (INIT, ({ CLEANUP_STMT; }))

		     because emit_local_var always treats the
		     initializer as a full-expression.  Thus, the
		     destructor would run too early; it would run at the
		     end of initializing the reference variable, rather
		     than at the end of the block enclosing the
		     reference variable.

		     The solution is to pass back a cleanup expression
		     which the caller is responsible for attaching to
		     the statement tree.  */
		}
	      else
		{
		  FUNC27 (var, /*toplev=*/1, at_eof);
		  if (FUNC2 (type))
		    static_aggregates = FUNC28 (NULL_TREE, var,
						   static_aggregates);
		}
	      /* Use its address to initialize the reference variable.  */
	      expr = FUNC7 (var);
	      if (base_conv_type)
		expr = FUNC15 (expr,
					FUNC9 (base_conv_type),
					/*check_access=*/true,
					/*nonnull=*/true);
	      expr = FUNC6 (COMPOUND_EXPR, FUNC1 (expr), init, expr);
	    }
	  else
	    /* Take the address of EXPR.  */
	    expr = FUNC10 (ADDR_EXPR, expr, 0);
	  /* If a BASE_CONV was required, perform it now.  */
	  if (base_conv_type)
	    expr = (FUNC24
		    (FUNC9 (base_conv_type), expr));
	  expr = FUNC8 (type, expr);
	}
    }
  else
    /* Perform the conversion.  */
    expr = FUNC13 (conv, expr);

  /* Free all the conversions we allocated.  */
  FUNC23 (&conversion_obstack, p);

  return expr;
}