
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int flagword ;
struct TYPE_2__ {int bss; } ;


 char* BFD_ABS_SECTION_NAME ;
 char* BFD_UND_SECTION_NAME ;
 char* BSS_SECTION_NAME ;
 char* DATA_SECTION_NAME ;
 int PROGRESS (int) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 char* TEXT_SECTION_NAME ;
 int bfd_applicable_section_flags (int ) ;
 int bfd_set_section_flags (int ,void*,int) ;
 void* bss_section ;
 void* data_section ;
 void* expr_section ;
 int gas_cgen_begin () ;
 int md_begin () ;
 scalar_t__ need_pass_2 ;
 int obj_begin () ;
 int read_a_source_file (char*) ;
 void* reg_section ;
 TYPE_1__* seg_info (void*) ;
 int stdoutput ;
 void* subseg_new (char*,int ) ;
 int subseg_set (void*,int ) ;
 void* text_section ;

__attribute__((used)) static void
perform_an_assembly_pass (int argc, char ** argv)
{
  int saw_a_file = 0;
  flagword applicable;

  need_pass_2 = 0;



  text_section = subseg_new (TEXT_SECTION_NAME, 0);
  data_section = subseg_new (DATA_SECTION_NAME, 0);
  bss_section = subseg_new (BSS_SECTION_NAME, 0);


  applicable = bfd_applicable_section_flags (stdoutput);
  bfd_set_section_flags (stdoutput, text_section,
    applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
           | SEC_CODE | SEC_READONLY));
  bfd_set_section_flags (stdoutput, data_section,
    applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
           | SEC_DATA));
  bfd_set_section_flags (stdoutput, bss_section, applicable & SEC_ALLOC);
  seg_info (bss_section)->bss = 1;
  subseg_new (BFD_ABS_SECTION_NAME, 0);
  subseg_new (BFD_UND_SECTION_NAME, 0);
  reg_section = subseg_new ("*GAS `reg' section*", 0);
  expr_section = subseg_new ("*GAS `expr' section*", 0);

  subseg_set (text_section, 0);



  md_begin ();
  argv++;
  argc--;

  while (argc--)
    {
      if (*argv)
 {
   PROGRESS (1);
   saw_a_file++;

   read_a_source_file (*argv);
 }
      argv++;
    }
  if (!saw_a_file)
    read_a_source_file ("");
}
