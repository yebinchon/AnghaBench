
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 char* demand_copy_C_string (int*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strchr (char*,char) ;
 char* tc_canonicalize_section_name (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
obj_elf_section_name (void)
{
  char *name;

  SKIP_WHITESPACE ();
  if (*input_line_pointer == '"')
    {
      int dummy;

      name = demand_copy_C_string (&dummy);
      if (name == ((void*)0))
 {
   ignore_rest_of_line ();
   return ((void*)0);
 }
    }
  else
    {
      char *end = input_line_pointer;

      while (0 == strchr ("\n\t,; ", *end))
 end++;
      if (end == input_line_pointer)
 {
   as_bad (_("missing name"));
   ignore_rest_of_line ();
   return ((void*)0);
 }

      name = xmalloc (end - input_line_pointer + 1);
      memcpy (name, input_line_pointer, end - input_line_pointer);
      name[end - input_line_pointer] = '\0';



      input_line_pointer = end;
    }
  SKIP_WHITESPACE ();
  return name;
}
