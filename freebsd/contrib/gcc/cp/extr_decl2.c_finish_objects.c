
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_3__ {int (* destructor ) (int ,int) ;int (* constructor ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ have_ctors_dtors; } ;


 int DECL_RTL (int ) ;
 int XEXP (int ,int ) ;
 int cgraph_mark_needed_node (int ) ;
 int cgraph_node (int ) ;
 int expand_or_defer_fn (int ) ;
 int finish_compound_stmt (int ) ;
 int finish_function (int ) ;
 scalar_t__ flag_syntax_only ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
finish_objects (int method_type, int initp, tree body)
{
  tree fn;


  finish_compound_stmt (body);
  fn = finish_function (0);
  expand_or_defer_fn (fn);




  if (flag_syntax_only)
    return;

  if (targetm.have_ctors_dtors)
    {
      rtx fnsym = XEXP (DECL_RTL (fn), 0);
      cgraph_mark_needed_node (cgraph_node (fn));
      if (method_type == 'I')
 (* targetm.asm_out.constructor) (fnsym, initp);
      else
 (* targetm.asm_out.destructor) (fnsym, initp);
    }
}
