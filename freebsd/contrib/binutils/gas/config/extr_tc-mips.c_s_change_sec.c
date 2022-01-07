
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subsegT ;
typedef int segT ;


 scalar_t__ IS_ELF ;
 char* RDATA_SECTION_NAME ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int TARGET_OS ;
 int auto_align ;
 int bfd_set_section_flags (int ,int ,int) ;
 int bss_section ;
 int demand_empty_rest_of_line () ;
 int get_absolute_expression () ;
 int mips_emit_delays () ;
 int obj_elf_section_change_hook () ;
 int record_alignment (int ,int) ;
 int s_data (int ) ;
 int s_text (int ) ;
 int stdoutput ;
 int strcmp (int ,char*) ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;

__attribute__((used)) static void
s_change_sec (int sec)
{
  segT seg;
  mips_emit_delays ();
  switch (sec)
    {
    case 't':
      s_text (0);
      break;
    case 'd':
      s_data (0);
      break;
    case 'b':
      subseg_set (bss_section, (subsegT) get_absolute_expression ());
      demand_empty_rest_of_line ();
      break;

    case 'r':
      seg = subseg_new (RDATA_SECTION_NAME,
   (subsegT) get_absolute_expression ());
      if (IS_ELF)
 {
   bfd_set_section_flags (stdoutput, seg, (SEC_ALLOC | SEC_LOAD
        | SEC_READONLY | SEC_RELOC
        | SEC_DATA));
   if (strcmp (TARGET_OS, "elf") != 0)
     record_alignment (seg, 4);
 }
      demand_empty_rest_of_line ();
      break;

    case 's':
      seg = subseg_new (".sdata", (subsegT) get_absolute_expression ());
      if (IS_ELF)
 {
   bfd_set_section_flags (stdoutput, seg,
     SEC_ALLOC | SEC_LOAD | SEC_RELOC | SEC_DATA);
   if (strcmp (TARGET_OS, "elf") != 0)
     record_alignment (seg, 4);
 }
      demand_empty_rest_of_line ();
      break;
    }

  auto_align = 1;
}
