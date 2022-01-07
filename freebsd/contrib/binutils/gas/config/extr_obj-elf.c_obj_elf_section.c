
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHF_GROUP ;
 int SHF_MERGE ;
 int SHT_NULL ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int as_warn (int ) ;
 char* demand_copy_C_string (int*) ;
 int demand_empty_rest_of_line () ;
 scalar_t__ flag_mri ;
 int get_absolute_expression () ;
 char get_symbol_end () ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int md_elf_section_change_hook () ;
 int md_flush_pending_output () ;
 int now_seg ;
 int now_subseg ;
 int obj_elf_change_section (char*,int,int,int,char*,int,int) ;
 int obj_elf_parse_section_letters (char*,int) ;
 char* obj_elf_section_name () ;
 int obj_elf_section_type (char*,int) ;
 int obj_elf_section_word (char*,int) ;
 int previous_section ;
 int previous_subsection ;
 int s_mri_sect (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
obj_elf_section (int push)
{
  char *name, *group_name, *beg;
  int type, attr, dummy;
  int entsize;
  int linkonce;


  if (flag_mri)
    {
      char mri_type;





      previous_section = now_seg;
      previous_subsection = now_subseg;

      s_mri_sect (&mri_type);





      return;
    }


  name = obj_elf_section_name ();
  if (name == ((void*)0))
    return;
  type = SHT_NULL;
  attr = 0;
  group_name = ((void*)0);
  entsize = 0;
  linkonce = 0;

  if (*input_line_pointer == ',')
    {

      ++input_line_pointer;
      SKIP_WHITESPACE ();

      if (*input_line_pointer == '"')
 {
   beg = demand_copy_C_string (&dummy);
   if (beg == ((void*)0))
     {
       ignore_rest_of_line ();
       return;
     }
   attr |= obj_elf_parse_section_letters (beg, strlen (beg));

   SKIP_WHITESPACE ();
   if (*input_line_pointer == ',')
     {
       char c;
       char *save = input_line_pointer;

       ++input_line_pointer;
       SKIP_WHITESPACE ();
       c = *input_line_pointer;
       if (c == '"')
  {
    beg = demand_copy_C_string (&dummy);
    if (beg == ((void*)0))
      {
        ignore_rest_of_line ();
        return;
      }
    type = obj_elf_section_type (beg, strlen (beg));
  }
       else if (c == '@' || c == '%')
  {
    beg = ++input_line_pointer;
    c = get_symbol_end ();
    *input_line_pointer = c;
    type = obj_elf_section_type (beg, input_line_pointer - beg);
  }
       else
  input_line_pointer = save;
     }

   SKIP_WHITESPACE ();
   if ((attr & SHF_MERGE) != 0 && *input_line_pointer == ',')
     {
       ++input_line_pointer;
       SKIP_WHITESPACE ();
       entsize = get_absolute_expression ();
       SKIP_WHITESPACE ();
       if (entsize < 0)
  {
    as_warn (_("invalid merge entity size"));
    attr &= ~SHF_MERGE;
    entsize = 0;
  }
     }
   else if ((attr & SHF_MERGE) != 0)
     {
       as_warn (_("entity size for SHF_MERGE not specified"));
       attr &= ~SHF_MERGE;
     }

   if ((attr & SHF_GROUP) != 0 && *input_line_pointer == ',')
     {
       ++input_line_pointer;
       group_name = obj_elf_section_name ();
       if (group_name == ((void*)0))
  attr &= ~SHF_GROUP;
       else if (strncmp (input_line_pointer, ",comdat", 7) == 0)
  {
    input_line_pointer += 7;
    linkonce = 1;
  }
       else if (strncmp (name, ".gnu.linkonce", 13) == 0)
  linkonce = 1;
     }
   else if ((attr & SHF_GROUP) != 0)
     {
       as_warn (_("group name for SHF_GROUP not specified"));
       attr &= ~SHF_GROUP;
     }
 }
      else
 {
   do
     {
       char c;

       SKIP_WHITESPACE ();
       if (*input_line_pointer != '#')
  {
    as_bad (_("character following name is not '#'"));
    ignore_rest_of_line ();
    return;
  }
       beg = ++input_line_pointer;
       c = get_symbol_end ();
       *input_line_pointer = c;

       attr |= obj_elf_section_word (beg, input_line_pointer - beg);

       SKIP_WHITESPACE ();
     }
   while (*input_line_pointer++ == ',');
   --input_line_pointer;
 }
    }

  demand_empty_rest_of_line ();

  obj_elf_change_section (name, type, attr, entsize, group_name, linkonce, push);
}
