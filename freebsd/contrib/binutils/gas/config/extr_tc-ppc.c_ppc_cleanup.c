
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef scalar_t__ subsegT ;
typedef int asection ;


 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 int bfd_set_section_flags (int ,int *,int) ;
 int frag_align (int,int ,int ) ;
 char* frag_more (int) ;
 int md_number_to_chars (char*,int,int) ;
 int * now_seg ;
 scalar_t__ now_subseg ;
 scalar_t__* ppc_apuinfo_list ;
 unsigned int ppc_apuinfo_num ;
 int stdoutput ;
 int strcpy (char*,char*) ;
 int * subseg_new (char*,int ) ;
 int subseg_set (int *,scalar_t__) ;

void
ppc_cleanup (void)
{
}
