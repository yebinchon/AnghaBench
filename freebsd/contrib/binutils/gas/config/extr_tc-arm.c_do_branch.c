
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BFD_RELOC_ARM_PCREL_BRANCH ;
 int BFD_RELOC_ARM_PCREL_JUMP ;
 scalar_t__ EF_ARM_EABI_VER4 ;
 scalar_t__ EF_ARM_EABI_VERSION (int ) ;
 int encode_branch (int ) ;
 int meabi_flags ;

__attribute__((used)) static void
do_branch (void)
{





    encode_branch (BFD_RELOC_ARM_PCREL_BRANCH);
}
