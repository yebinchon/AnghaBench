
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subsegT ;
typedef int segT ;


 char* RDATA_SECTION_NAME ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int TARGET_OS ;
 int bfd_set_section_flags (int ,int ,int) ;
 int demand_empty_rest_of_line () ;
 int get_absolute_expression () ;
 int obj_elf_section_change_hook () ;
 int record_alignment (int ,int) ;
 int stdoutput ;
 int strcmp (int ,char*) ;
 int subseg_new (char*,int ) ;

__attribute__((used)) static void
s_change_sec (int sec)
{
  segT seg;
  switch (sec)
    {
    case 'r':
      seg = subseg_new (RDATA_SECTION_NAME, (subsegT) get_absolute_expression ());
      bfd_set_section_flags (stdoutput, seg, (SEC_ALLOC | SEC_LOAD | SEC_READONLY | SEC_RELOC | SEC_DATA));
      if (strcmp (TARGET_OS, "elf") != 0)
        record_alignment (seg, 4);
      demand_empty_rest_of_line ();
      break;
    case 's':
      seg = subseg_new (".sdata", (subsegT) get_absolute_expression ());
      bfd_set_section_flags (stdoutput, seg, SEC_ALLOC | SEC_LOAD | SEC_RELOC | SEC_DATA);
      if (strcmp (TARGET_OS, "elf") != 0)
        record_alignment (seg, 4);
      demand_empty_rest_of_line ();
      break;
    }
}
