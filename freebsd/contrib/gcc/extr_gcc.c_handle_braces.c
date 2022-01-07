
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISIDNUM (char const) ;
 int SKIP_WHITE () ;
 int fatal (char*,char const*,char const) ;
 int input_suffix_matches (char const*,char const*) ;
 int mark_matching_switches (char const*,char const*,int) ;
 char* process_brace_body (char const*,char const*,char const*,int,int) ;
 int process_marked_switches () ;
 int switch_matches (char const*,char const*,int) ;

__attribute__((used)) static const char *
handle_braces (const char *p)
{
  const char *atom, *end_atom;
  const char *d_atom = ((void*)0), *d_end_atom = ((void*)0);
  const char *orig = p;

  bool a_is_suffix;
  bool a_is_starred;
  bool a_is_negated;
  bool a_matched;

  bool a_must_be_last = 0;
  bool ordered_set = 0;
  bool disjunct_set = 0;
  bool disj_matched = 0;
  bool disj_starred = 1;
  bool n_way_choice = 0;
  bool n_way_matched = 0;



  do
    {
      if (a_must_be_last)
 goto invalid;



      a_matched = a_is_suffix = a_is_starred = a_is_negated = 0;

      do { while (*p == ' ' || *p == '\t') p++; } while (0);
      if (*p == '!')
 p++, a_is_negated = 1;

      do { while (*p == ' ' || *p == '\t') p++; } while (0);
      if (*p == '.')
 p++, a_is_suffix = 1;

      atom = p;
      while (ISIDNUM(*p) || *p == '-' || *p == '+' || *p == '='
      || *p == ',' || *p == '.' || *p == '@')
 p++;
      end_atom = p;

      if (*p == '*')
 p++, a_is_starred = 1;

      do { while (*p == ' ' || *p == '\t') p++; } while (0);
      switch (*p)
 {
 case '&': case '}':

   ordered_set = 1;
   if (disjunct_set || n_way_choice || a_is_negated || a_is_suffix
       || atom == end_atom)
     goto invalid;

   mark_matching_switches (atom, end_atom, a_is_starred);

   if (*p == '}')
     process_marked_switches ();
   break;

 case '|': case ':':


   disjunct_set = 1;
   if (ordered_set)
     goto invalid;

   if (atom == end_atom)
     {
       if (!n_way_choice || disj_matched || *p == '|'
    || a_is_negated || a_is_suffix || a_is_starred)
  goto invalid;



       a_must_be_last = 1;
       disj_matched = !n_way_matched;
       disj_starred = 0;
     }
   else
     {
        if (a_is_suffix && a_is_starred)
   goto invalid;

        if (!a_is_starred)
   disj_starred = 0;



        if (!disj_matched && !n_way_matched)
   {
     if (a_is_suffix)
       a_matched = input_suffix_matches (atom, end_atom);
     else
       a_matched = switch_matches (atom, end_atom, a_is_starred);

     if (a_matched != a_is_negated)
       {
         disj_matched = 1;
         d_atom = atom;
         d_end_atom = end_atom;
       }
   }
     }

   if (*p == ':')
     {


       p = process_brace_body (p + 1, d_atom, d_end_atom, disj_starred,
          disj_matched && !n_way_matched);
       if (p == 0)
  return 0;



       if (*p == ';')
  {
    n_way_choice = 1;
    n_way_matched |= disj_matched;
    disj_matched = 0;
    disj_starred = 1;
    d_atom = d_end_atom = ((void*)0);
  }
     }
   break;

 default:
   goto invalid;
 }
    }
  while (*p++ != '}');

  return p;

 invalid:
  fatal ("braced spec '%s' is invalid at '%c'", orig, *p);


}
