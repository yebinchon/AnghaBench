
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 char* demand_copy_C_string (int*) ;
 int free (char*) ;
 int ignore_rest_of_line () ;
 char* input_line_pointer ;
 int s_stab_generic (int,char*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

void
s_xstab (int what)
{
  int length;
  char *stab_secname, *stabstr_secname;
  static char *saved_secname, *saved_strsecname;




  stab_secname = demand_copy_C_string (&length);
  SKIP_WHITESPACE ();
  if (*input_line_pointer == ',')
    input_line_pointer++;
  else
    {
      as_bad (_("comma missing in .xstabs"));
      ignore_rest_of_line ();
      return;
    }



  if (saved_secname == 0 || strcmp (saved_secname, stab_secname))
    {
      stabstr_secname = (char *) xmalloc (strlen (stab_secname) + 4);
      strcpy (stabstr_secname, stab_secname);
      strcat (stabstr_secname, "str");
      if (saved_secname)
 {
   free (saved_secname);
   free (saved_strsecname);
 }
      saved_secname = stab_secname;
      saved_strsecname = stabstr_secname;
    }
  s_stab_generic (what, saved_secname, saved_strsecname);
}
