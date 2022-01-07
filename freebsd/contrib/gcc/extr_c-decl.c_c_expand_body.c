
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* destructor ) (int ,int ) ;int (* constructor ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ have_ctors_dtors; } ;


 scalar_t__ DECL_INITIAL (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ DECL_STATIC_CONSTRUCTOR (int ) ;
 scalar_t__ DECL_STATIC_DESTRUCTOR (int ) ;
 int DEFAULT_INIT_PRIORITY ;
 int XEXP (int ,int ) ;
 scalar_t__ error_mark_node ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 TYPE_2__ targetm ;
 int tree_rest_of_compilation (int ) ;

void
c_expand_body (tree fndecl)
{

  if (!DECL_INITIAL (fndecl)
      || DECL_INITIAL (fndecl) == error_mark_node)
    return;

  tree_rest_of_compilation (fndecl);

  if (DECL_STATIC_CONSTRUCTOR (fndecl)
      && targetm.have_ctors_dtors)
    targetm.asm_out.constructor (XEXP (DECL_RTL (fndecl), 0),
     DEFAULT_INIT_PRIORITY);
  if (DECL_STATIC_DESTRUCTOR (fndecl)
      && targetm.have_ctors_dtors)
    targetm.asm_out.destructor (XEXP (DECL_RTL (fndecl), 0),
    DEFAULT_INIT_PRIORITY);
}
