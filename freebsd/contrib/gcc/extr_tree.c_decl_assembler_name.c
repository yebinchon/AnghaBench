
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int assembler_name; } ;
struct TYPE_6__ {TYPE_1__ decl_with_vis; } ;
struct TYPE_5__ {int (* set_decl_assembler_name ) (int ) ;} ;


 int DECL_ASSEMBLER_NAME_SET_P (int ) ;
 TYPE_3__* DECL_WITH_VIS_CHECK (int ) ;
 TYPE_2__ lang_hooks ;
 int stub1 (int ) ;

tree
decl_assembler_name (tree decl)
{
  if (!DECL_ASSEMBLER_NAME_SET_P (decl))
    lang_hooks.set_decl_assembler_name (decl);
  return DECL_WITH_VIS_CHECK (decl)->decl_with_vis.assembler_name;
}
