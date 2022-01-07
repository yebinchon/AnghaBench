
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct gimplify_omp_ctx {int privatized_types; } ;
struct TYPE_3__ {int (* omp_firstprivatize_type_sizes ) (struct gimplify_omp_ctx*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;




 int DECL_FIELD_OFFSET (int *) ;

 int FIELD_DECL ;






 int * TREE_CHAIN (int *) ;
 int TREE_CODE (int *) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_DOMAIN (int *) ;
 int * TYPE_FIELDS (int *) ;
 int * TYPE_MAIN_VARIANT (int *) ;
 int TYPE_MAX_VALUE (int *) ;
 int TYPE_MIN_VALUE (int *) ;
 int TYPE_SIZE (int *) ;
 int TYPE_SIZE_UNIT (int *) ;

 int * error_mark_node ;
 TYPE_2__ lang_hooks ;
 int omp_firstprivatize_variable (struct gimplify_omp_ctx*,int ) ;
 scalar_t__ pointer_set_insert (int ,int *) ;
 int stub1 (struct gimplify_omp_ctx*,int *) ;

__attribute__((used)) static void
omp_firstprivatize_type_sizes (struct gimplify_omp_ctx *ctx, tree type)
{
  if (type == ((void*)0) || type == error_mark_node)
    return;
  type = TYPE_MAIN_VARIANT (type);

  if (pointer_set_insert (ctx->privatized_types, type))
    return;

  switch (TREE_CODE (type))
    {
    case 134:
    case 135:
    case 136:
    case 131:
      omp_firstprivatize_variable (ctx, TYPE_MIN_VALUE (type));
      omp_firstprivatize_variable (ctx, TYPE_MAX_VALUE (type));
      break;

    case 137:
      omp_firstprivatize_type_sizes (ctx, TREE_TYPE (type));
      omp_firstprivatize_type_sizes (ctx, TYPE_DOMAIN (type));
      break;

    case 130:
    case 128:
    case 132:
      {
 tree field;
 for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
   if (TREE_CODE (field) == FIELD_DECL)
     {
       omp_firstprivatize_variable (ctx, DECL_FIELD_OFFSET (field));
       omp_firstprivatize_type_sizes (ctx, TREE_TYPE (field));
     }
      }
      break;

    case 133:
    case 129:
      omp_firstprivatize_type_sizes (ctx, TREE_TYPE (type));
      break;

    default:
      break;
    }

  omp_firstprivatize_variable (ctx, TYPE_SIZE (type));
  omp_firstprivatize_variable (ctx, TYPE_SIZE_UNIT (type));
  lang_hooks.types.omp_firstprivatize_type_sizes (ctx, type);
}
