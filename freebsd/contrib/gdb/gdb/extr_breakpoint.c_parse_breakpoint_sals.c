
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {struct symtab* symtab; int pc; int section; int line; } ;
struct symtab {int dummy; } ;


 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int*) ;
 int default_breakpoint_address ;
 int default_breakpoint_line ;
 struct symtab* default_breakpoint_symtab ;
 scalar_t__ default_breakpoint_valid ;
 int error (char*) ;
 int find_pc_overlay (int ) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int init_sal (struct symtab_and_line*) ;
 scalar_t__ isspace (char) ;
 char* savestring (char*,int) ;
 int * strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char** xcalloc (int,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
parse_breakpoint_sals (char **address,
         struct symtabs_and_lines *sals,
         char ***addr_string,
         int *not_found_ptr)
{
  char *addr_start = *address;
  *addr_string = ((void*)0);


  if ((*address) == ((void*)0)
      || (strncmp ((*address), "if", 2) == 0 && isspace ((*address)[2])))
    {
      if (default_breakpoint_valid)
 {
   struct symtab_and_line sal;
   init_sal (&sal);
   sals->sals = (struct symtab_and_line *)
     xmalloc (sizeof (struct symtab_and_line));
   sal.pc = default_breakpoint_address;
   sal.line = default_breakpoint_line;
   sal.symtab = default_breakpoint_symtab;
   sal.section = find_pc_overlay (sal.pc);
   sals->sals[0] = sal;
   sals->nelts = 1;
 }
      else
 error ("No default breakpoint address now.");
    }
  else
    {







      struct symtab_and_line cursal = get_current_source_symtab_and_line ();

      if (default_breakpoint_valid
   && (!cursal.symtab
        || ((strchr ("+-", (*address)[0]) != ((void*)0))
     && ((*address)[1] != '['))))
 *sals = decode_line_1 (address, 1, default_breakpoint_symtab,
          default_breakpoint_line, addr_string,
          not_found_ptr);
      else
 *sals = decode_line_1 (address, 1, (struct symtab *) ((void*)0), 0,
                 addr_string, not_found_ptr);
    }

  if (sals->nelts > 0 && *addr_string == ((void*)0))
    *addr_string = xcalloc (sals->nelts, sizeof (char **));
  if (addr_start != (*address))
    {
      int i;
      for (i = 0; i < sals->nelts; i++)
 {

   if ((*addr_string)[i] == ((void*)0))
     (*addr_string)[i] = savestring (addr_start, (*address) - addr_start);
 }
    }
}
