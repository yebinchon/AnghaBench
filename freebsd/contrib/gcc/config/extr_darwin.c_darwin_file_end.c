
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int ASM_OUTPUT_ALIGN (int ,int) ;
 int asm_out_file ;
 size_t constructor_section ;
 int * darwin_sections ;
 size_t destructor_section ;
 int fprintf (int ,char*) ;
 TYPE_1__ lang_hooks ;
 int machopic_finish (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int switch_to_section (int ) ;

void
darwin_file_end (void)
{
  machopic_finish (asm_out_file);
  if (strcmp (lang_hooks.name, "GNU C++") == 0)
    {
      switch_to_section (darwin_sections[constructor_section]);
      switch_to_section (darwin_sections[destructor_section]);
      ASM_OUTPUT_ALIGN (asm_out_file, 1);
    }
  fprintf (asm_out_file, "\t.subsections_via_symbols\n");
}
