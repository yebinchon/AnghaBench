#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  (* tree_fn_t ) (int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  tree ;
struct pair_fn_data {int /*<<< orphan*/  visited; void* data; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
#define  ARROW_EXPR 157 
#define  BASELINK 156 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 155 
#define  CAST_EXPR 154 
#define  COMPONENT_REF 153 
#define  CONSTRUCTOR 152 
#define  CONST_CAST_EXPR 151 
#define  CONST_DECL 150 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  DOTSTAR_EXPR 149 
#define  DYNAMIC_CAST_EXPR 148 
#define  ENUMERAL_TYPE 147 
#define  FUNCTION_DECL 146 
#define  FUNCTION_TYPE 145 
#define  INDIRECT_REF 144 
#define  METHOD_TYPE 143 
#define  MODOP_EXPR 142 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PARM_DECL 141 
#define  PSEUDO_DTOR_EXPR 140 
#define  RECORD_TYPE 139 
#define  REINTERPRET_CAST_EXPR 138 
#define  STATIC_CAST_EXPR 137 
#define  TEMPLATE_DECL 136 
#define  TEMPLATE_PARM_INDEX 135 
#define  TEMPLATE_TEMPLATE_PARM 134 
#define  TEMPLATE_TYPE_PARM 133 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int const FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
#define  TYPEID_EXPR 132 
#define  TYPENAME_TYPE 131 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
#define  TYPEOF_TYPE 130 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/  error_mark_node ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,void*),void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static tree
FUNC24 (tree *tp, int *walk_subtrees, void *d)
{
  tree t = *tp;
  struct pair_fn_data *pfd = (struct pair_fn_data *) d;
  tree_fn_t fn = pfd->fn;
  void *data = pfd->data;

  if (FUNC17 (t)
      && FUNC22 (FUNC14 (t), fn, data, pfd->visited))
    return error_mark_node;

  switch (FUNC9 (t))
    {
    case RECORD_TYPE:
      if (FUNC19 (t))
	break;
      /* Fall through.  */

    case UNION_TYPE:
    case ENUMERAL_TYPE:
      if (!FUNC20 (t))
	*walk_subtrees = 0;
      else if (FUNC22 (FUNC11 (FUNC20 (t)),
				       fn, data, pfd->visited))
	return error_mark_node;
      break;

    case METHOD_TYPE:
      /* Since we're not going to walk subtrees, we have to do this
	 explicitly here.  */
      if (FUNC22 (FUNC16 (t), fn, data,
				  pfd->visited))
	return error_mark_node;
      /* Fall through.  */

    case FUNCTION_TYPE:
      /* Check the return type.  */
      if (FUNC22 (FUNC10 (t), fn, data, pfd->visited))
	return error_mark_node;

      /* Check the parameter types.  Since default arguments are not
	 instantiated until they are needed, the TYPE_ARG_TYPES may
	 contain expressions that involve template parameters.  But,
	 no-one should be looking at them yet.  And, once they're
	 instantiated, they don't contain template parameters, so
	 there's no point in looking at them then, either.  */
      {
	tree parm;

	for (parm = FUNC13 (t); parm; parm = FUNC8 (parm))
	  if (FUNC22 (FUNC11 (parm), fn, data,
				      pfd->visited))
	    return error_mark_node;

	/* Since we've already handled the TYPE_ARG_TYPES, we don't
	   want walk_tree walking into them itself.  */
	*walk_subtrees = 0;
      }
      break;

    case TYPEOF_TYPE:
      if (FUNC22 (FUNC15 (t), fn, data,
				  pfd->visited))
	return error_mark_node;
      break;

    case FUNCTION_DECL:
    case VAR_DECL:
      if (FUNC3 (t) && FUNC4 (t)
	  && FUNC22 (FUNC7 (t), fn, data,
				     pfd->visited))
	return error_mark_node;
      /* Fall through.  */

    case PARM_DECL:
    case CONST_DECL:
      if (FUNC9 (t) == CONST_DECL && FUNC5 (t)
	  && FUNC22 (FUNC2 (t), fn, data,
				     pfd->visited))
	return error_mark_node;
      if (FUNC1 (t)
	  && FUNC22 (FUNC1 (t), fn, data,
				     pfd->visited))
	return error_mark_node;
      break;

    case BOUND_TEMPLATE_TEMPLATE_PARM:
      /* Record template parameters such as `T' inside `TT<T>'.  */
      if (FUNC22 (FUNC21 (t), fn, data, pfd->visited))
	return error_mark_node;
      /* Fall through.  */

    case TEMPLATE_TEMPLATE_PARM:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_PARM_INDEX:
      if (fn && (*fn)(t, data))
	return error_mark_node;
      else if (!fn)
	return error_mark_node;
      break;

    case TEMPLATE_DECL:
      /* A template template parameter is encountered.  */
      if (FUNC6 (t)
	  && FUNC22 (FUNC10 (t), fn, data, pfd->visited))
	return error_mark_node;

      /* Already substituted template template parameter */
      *walk_subtrees = 0;
      break;

    case TYPENAME_TYPE:
      if (!fn
	  || FUNC22 (FUNC12 (t), fn,
				     data, pfd->visited))
	return error_mark_node;
      break;

    case CONSTRUCTOR:
      if (FUNC10 (t) && FUNC19 (FUNC10 (t))
	  && FUNC22 (FUNC18
				     (FUNC10 (t)), fn, data,
				     pfd->visited))
	return error_mark_node;
      break;

    case INDIRECT_REF:
    case COMPONENT_REF:
      /* If there's no type, then this thing must be some expression
	 involving template parameters.  */
      if (!fn && !FUNC10 (t))
	return error_mark_node;
      break;

    case MODOP_EXPR:
    case CAST_EXPR:
    case REINTERPRET_CAST_EXPR:
    case CONST_CAST_EXPR:
    case STATIC_CAST_EXPR:
    case DYNAMIC_CAST_EXPR:
    case ARROW_EXPR:
    case DOTSTAR_EXPR:
    case TYPEID_EXPR:
    case PSEUDO_DTOR_EXPR:
      if (!fn)
	return error_mark_node;
      break;

    case BASELINK:
      /* If we do not handle this case specially, we end up walking
	 the BINFO hierarchy, which is circular, and therefore
	 confuses walk_tree.  */
      *walk_subtrees = 0;
      if (FUNC22 (FUNC0 (*tp), fn, data,
				  pfd->visited))
	return error_mark_node;
      break;

    default:
      break;
    }

  /* We didn't find any template parameters we liked.  */
  return NULL_TREE;
}