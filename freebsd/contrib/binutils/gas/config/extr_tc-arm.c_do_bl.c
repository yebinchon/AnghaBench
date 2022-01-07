
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cond; } ;


 int BFD_RELOC_ARM_PCREL_BRANCH ;
 int BFD_RELOC_ARM_PCREL_CALL ;
 int BFD_RELOC_ARM_PCREL_JUMP ;
 scalar_t__ COND_ALWAYS ;
 scalar_t__ EF_ARM_EABI_VER4 ;
 scalar_t__ EF_ARM_EABI_VERSION (int ) ;
 int encode_branch (int ) ;
 TYPE_1__ inst ;
 int meabi_flags ;

__attribute__((used)) static void
do_bl (void)
{
    encode_branch (BFD_RELOC_ARM_PCREL_BRANCH);
}
