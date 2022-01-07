
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum symbol_visibility { ____Placeholder_symbol_visibility } symbol_visibility ;
struct TYPE_3__ {int (* visibility ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int DECL_VISIBILITY (int ) ;
 int VISIBILITY_DEFAULT ;
 int stub1 (int ,int) ;
 TYPE_2__ targetm ;

int
maybe_assemble_visibility (tree decl)
{
  enum symbol_visibility vis = DECL_VISIBILITY (decl);

  if (vis != VISIBILITY_DEFAULT)
    {
      targetm.asm_out.visibility (decl, vis);
      return 1;
    }
  else
    return 0;
}
