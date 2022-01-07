
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int segT ;


 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int S_CLEAR_EXTERNAL (int *) ;
 int bfd_set_section_alignment (int ,int ,int) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int now_seg ;
 int now_subseg ;
 int * section_symbol (int ) ;
 int stdoutput ;
 int subseg_new (char const*,int ) ;
 int subseg_set (int ,int) ;

__attribute__((used)) static void
create_literal_section (const char *name,
   segT *secp,
   symbolS **symp)
{
  segT current_section = now_seg;
  int current_subsec = now_subseg;
  segT new_sec;

  *secp = new_sec = subseg_new (name, 0);
  subseg_set (current_section, current_subsec);
  bfd_set_section_alignment (stdoutput, new_sec, 4);
  bfd_set_section_flags (stdoutput, new_sec,
    SEC_RELOC | SEC_ALLOC | SEC_LOAD | SEC_READONLY
    | SEC_DATA);

  S_CLEAR_EXTERNAL (*symp = section_symbol (new_sec));
}
