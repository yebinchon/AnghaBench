
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * part1; } ;


 scalar_t__ check_live_switch (int,unsigned int) ;
 scalar_t__ do_spec_1 (char*,int ,int *) ;
 int fatal (char*,char const*) ;
 int give_switch (int,int) ;
 int n_switches ;
 char* save_string (char const*,int) ;
 int strncmp (int *,char const*,unsigned int) ;
 int * suffix_subst ;
 TYPE_1__* switches ;

__attribute__((used)) static const char *
process_brace_body (const char *p, const char *atom, const char *end_atom,
      int starred, int matched)
{
  const char *body, *end_body;
  unsigned int nesting_level;
  bool have_subst = 0;



  body = p;
  nesting_level = 1;
  for (;;)
    {
      if (*p == '{')
 nesting_level++;
      else if (*p == '}')
 {
   if (!--nesting_level)
     break;
 }
      else if (*p == ';' && nesting_level == 1)
 break;
      else if (*p == '%' && p[1] == '*' && nesting_level == 1)
 have_subst = 1;
      else if (*p == '\0')
 goto invalid;
      p++;
    }

  end_body = p;
  while (end_body[-1] == ' ' || end_body[-1] == '\t')
    end_body--;

  if (have_subst && !starred)
    goto invalid;

  if (matched)
    {



      char *string = save_string (body, end_body - body);
      if (!have_subst)
 {
   if (do_spec_1 (string, 0, ((void*)0)) < 0)
     return 0;
 }
      else
 {



   unsigned int hard_match_len = end_atom - atom;
   int i;

   for (i = 0; i < n_switches; i++)
     if (!strncmp (switches[i].part1, atom, hard_match_len)
  && check_live_switch (i, hard_match_len))
       {
  if (do_spec_1 (string, 0,
          &switches[i].part1[hard_match_len]) < 0)
    return 0;

  give_switch (i, 1);
  suffix_subst = ((void*)0);
       }
 }
    }

  return p;

 invalid:
  fatal ("braced spec body '%s' is invalid", body);
}
