
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct dieinfo {scalar_t__ die_length; int die_tag; scalar_t__ at_sibling; int has_at_low_pc; void* at_high_pc; void* at_low_pc; } ;


 scalar_t__ SIZEOF_DIE_LENGTH ;
 void* SMASH_TEXT_ADDRESS (void*) ;






 int TAG_padding ;






 int basicdieinfo (struct dieinfo*,char*,struct objfile*) ;
 int completedieinfo (struct dieinfo*,struct objfile*) ;
 int * current_subfile ;
 int dbbase ;
 int dbroff ;
 int dwarf_read_array_type (struct dieinfo*) ;
 int new_symbol (struct dieinfo*,struct objfile*) ;
 int read_enumeration (struct dieinfo*,char*,char*,struct objfile*) ;
 int read_file_scope (struct dieinfo*,char*,char*,struct objfile*) ;
 int read_func_scope (struct dieinfo*,char*,char*,struct objfile*) ;
 int read_lexical_block_scope (struct dieinfo*,char*,char*,struct objfile*) ;
 int read_structure_scope (struct dieinfo*,char*,char*,struct objfile*) ;
 int read_subroutine_type (struct dieinfo*,char*,char*) ;
 int read_tag_pointer_type (struct dieinfo*) ;
 int read_tag_string_type (struct dieinfo*) ;

__attribute__((used)) static void
process_dies (char *thisdie, char *enddie, struct objfile *objfile)
{
  char *nextdie;
  struct dieinfo di;

  while (thisdie < enddie)
    {
      basicdieinfo (&di, thisdie, objfile);
      if (di.die_length < SIZEOF_DIE_LENGTH)
 {
   break;
 }
      else if (di.die_tag == TAG_padding)
 {
   nextdie = thisdie + di.die_length;
 }
      else
 {
   completedieinfo (&di, objfile);
   if (di.at_sibling != 0)
     {
       nextdie = dbbase + di.at_sibling - dbroff;
     }
   else
     {
       nextdie = thisdie + di.die_length;
     }

   di.at_low_pc = SMASH_TEXT_ADDRESS (di.at_low_pc);
   di.at_high_pc = SMASH_TEXT_ADDRESS (di.at_high_pc);
   switch (di.die_tag)
     {
     case 137:



       if (current_subfile == ((void*)0))
  read_file_scope (&di, thisdie, nextdie, objfile);
       else
  nextdie = thisdie + di.die_length;
       break;
     case 135:
     case 130:
       if (di.has_at_low_pc)
  {
    read_func_scope (&di, thisdie, nextdie, objfile);
  }
       break;
     case 134:
       read_lexical_block_scope (&di, thisdie, nextdie, objfile);
       break;
     case 138:
     case 131:
     case 128:
       read_structure_scope (&di, thisdie, nextdie, objfile);
       break;
     case 136:
       read_enumeration (&di, thisdie, nextdie, objfile);
       break;
     case 129:
       read_subroutine_type (&di, thisdie, nextdie);
       break;
     case 139:
       dwarf_read_array_type (&di);
       break;
     case 133:
       read_tag_pointer_type (&di);
       break;
     case 132:
       read_tag_string_type (&di);
       break;
     default:
       new_symbol (&di, objfile);
       break;
     }
 }
      thisdie = nextdie;
    }
}
