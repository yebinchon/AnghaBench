
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* cdtor_returns_this ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int DECL_ARGUMENTS (int ) ;
 int DECL_RESULT (int ) ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int RETURN_EXPR ;
 int TREE_TYPE (int ) ;
 int add_stmt (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build_stmt (int ,int ) ;
 int cdtor_label ;
 int current_function_decl ;
 scalar_t__ stub1 () ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
finish_constructor_body (void)
{
  tree val;
  tree exprstmt;

  if (targetm.cxx.cdtor_returns_this ())
    {

      add_stmt (build_stmt (LABEL_EXPR, cdtor_label));

      val = DECL_ARGUMENTS (current_function_decl);
      val = build2 (MODIFY_EXPR, TREE_TYPE (val),
      DECL_RESULT (current_function_decl), val);

      exprstmt = build_stmt (RETURN_EXPR, val);
      add_stmt (exprstmt);
    }
}
