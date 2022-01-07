
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* globalize_label ) (int ,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int ASM_MAKE_LABEL_LINKONCE (int ,char const*) ;
 int ASM_WEAKEN_DECL (int ,int ,char const*,int ) ;
 int ASM_WEAKEN_LABEL (int ,char const*) ;
 scalar_t__ DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_ONE_ONLY (int ) ;
 int DECL_RTL (int ) ;
 scalar_t__ DECL_WEAK (int ) ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int XEXP (int ,int ) ;
 char* XSTR (int ,int ) ;
 int asm_out_file ;
 int stub1 (int ,char const*) ;
 TYPE_2__ targetm ;
 scalar_t__ ultimate_transparent_alias_target (int *) ;
 int weak_decls ;
 int weakref_targets ;

__attribute__((used)) static void
globalize_decl (tree decl)
{
  const char *name = XSTR (XEXP (DECL_RTL (decl), 0), 0);
  targetm.asm_out.globalize_label (asm_out_file, name);
}
