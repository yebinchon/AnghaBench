
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BITS_PER_UNIT ;
 int DEFAULT_INIT_PRIORITY ;
 int MAX_INIT_PRIORITY ;
 int POINTER_SIZE ;
 int SECTION_WRITE ;
 int assemble_align (int) ;
 int assemble_integer (int ,int,int,int) ;
 int get_section (char const*,int ,int *) ;
 int sprintf (char*,char*,int) ;
 int switch_to_section (int ) ;

void
default_named_section_asm_out_constructor (rtx symbol, int priority)
{
  const char *section = ".ctors";
  char buf[16];


  if (priority != DEFAULT_INIT_PRIORITY)
    {
      sprintf (buf, ".ctors.%.5u",



        MAX_INIT_PRIORITY - priority);
      section = buf;
    }

  switch_to_section (get_section (section, SECTION_WRITE, ((void*)0)));
  assemble_align (POINTER_SIZE);
  assemble_integer (symbol, POINTER_SIZE / BITS_PER_UNIT, POINTER_SIZE, 1);
}
