
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* tree_fn_t ) (int ,void*) ;
typedef int tree ;
struct pair_fn_data {int visited; void* data; int (* fn ) (int ,void*) ;} ;




 int BASELINK_FUNCTIONS (int ) ;






 int DECL_CONTEXT (int ) ;
 int DECL_INITIAL (int ) ;
 int DECL_LANG_SPECIFIC (int ) ;
 int DECL_TEMPLATE_INFO (int ) ;
 int DECL_TEMPLATE_PARM_P (int ) ;
 int DECL_TEMPLATE_TEMPLATE_PARM_P (int ) ;
 int DECL_TI_ARGS (int ) ;
 int NULL_TREE ;
 int TREE_CHAIN (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;


 int TYPENAME_TYPE_FULLNAME (int ) ;

 int TYPE_ARG_TYPES (int ) ;
 int TYPE_CONTEXT (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_METHOD_BASETYPE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_TEMPLATE_INFO (int ) ;
 int TYPE_TI_ARGS (int ) ;


 int error_mark_node ;
 scalar_t__ for_each_template_parm (int ,int (*) (int ,void*),void*,int ) ;
 int stub1 (int ,void*) ;

__attribute__((used)) static tree
for_each_template_parm_r (tree *tp, int *walk_subtrees, void *d)
{
  tree t = *tp;
  struct pair_fn_data *pfd = (struct pair_fn_data *) d;
  tree_fn_t fn = pfd->fn;
  void *data = pfd->data;

  if (TYPE_P (t)
      && for_each_template_parm (TYPE_CONTEXT (t), fn, data, pfd->visited))
    return error_mark_node;

  switch (TREE_CODE (t))
    {
    case 139:
      if (TYPE_PTRMEMFUNC_P (t))
 break;


    case 129:
    case 147:
      if (!TYPE_TEMPLATE_INFO (t))
 *walk_subtrees = 0;
      else if (for_each_template_parm (TREE_VALUE (TYPE_TEMPLATE_INFO (t)),
           fn, data, pfd->visited))
 return error_mark_node;
      break;

    case 143:


      if (for_each_template_parm (TYPE_METHOD_BASETYPE (t), fn, data,
      pfd->visited))
 return error_mark_node;


    case 145:

      if (for_each_template_parm (TREE_TYPE (t), fn, data, pfd->visited))
 return error_mark_node;







      {
 tree parm;

 for (parm = TYPE_ARG_TYPES (t); parm; parm = TREE_CHAIN (parm))
   if (for_each_template_parm (TREE_VALUE (parm), fn, data,
          pfd->visited))
     return error_mark_node;



 *walk_subtrees = 0;
      }
      break;

    case 130:
      if (for_each_template_parm (TYPE_FIELDS (t), fn, data,
      pfd->visited))
 return error_mark_node;
      break;

    case 146:
    case 128:
      if (DECL_LANG_SPECIFIC (t) && DECL_TEMPLATE_INFO (t)
   && for_each_template_parm (DECL_TI_ARGS (t), fn, data,
         pfd->visited))
 return error_mark_node;


    case 141:
    case 150:
      if (TREE_CODE (t) == 150 && DECL_TEMPLATE_PARM_P (t)
   && for_each_template_parm (DECL_INITIAL (t), fn, data,
         pfd->visited))
 return error_mark_node;
      if (DECL_CONTEXT (t)
   && for_each_template_parm (DECL_CONTEXT (t), fn, data,
         pfd->visited))
 return error_mark_node;
      break;

    case 155:

      if (for_each_template_parm (TYPE_TI_ARGS (t), fn, data, pfd->visited))
 return error_mark_node;


    case 134:
    case 133:
    case 135:
      if (fn && (*fn)(t, data))
 return error_mark_node;
      else if (!fn)
 return error_mark_node;
      break;

    case 136:

      if (DECL_TEMPLATE_TEMPLATE_PARM_P (t)
   && for_each_template_parm (TREE_TYPE (t), fn, data, pfd->visited))
 return error_mark_node;


      *walk_subtrees = 0;
      break;

    case 131:
      if (!fn
   || for_each_template_parm (TYPENAME_TYPE_FULLNAME (t), fn,
         data, pfd->visited))
 return error_mark_node;
      break;

    case 152:
      if (TREE_TYPE (t) && TYPE_PTRMEMFUNC_P (TREE_TYPE (t))
   && for_each_template_parm (TYPE_PTRMEMFUNC_FN_TYPE
         (TREE_TYPE (t)), fn, data,
         pfd->visited))
 return error_mark_node;
      break;

    case 144:
    case 153:


      if (!fn && !TREE_TYPE (t))
 return error_mark_node;
      break;

    case 142:
    case 154:
    case 138:
    case 151:
    case 137:
    case 148:
    case 157:
    case 149:
    case 132:
    case 140:
      if (!fn)
 return error_mark_node;
      break;

    case 156:



      *walk_subtrees = 0;
      if (for_each_template_parm (BASELINK_FUNCTIONS (*tp), fn, data,
      pfd->visited))
 return error_mark_node;
      break;

    default:
      break;
    }


  return NULL_TREE;
}
