
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {long type_index; } ;
typedef enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef int bfd_vma ;
typedef int bfd_boolean ;







 int FALSE ;
 int ISDIGIT (char) ;
 int N_GSYM ;
 int N_LSYM ;
 int N_RSYM ;
 int N_STSYM ;
 int TRUE ;
 int abort () ;
 int free (char*) ;
 int sprintf (char*,char*,...) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_write_symbol (struct stab_write_handle*,int,int ,int ,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_variable (void *p, const char *name, enum debug_var_kind kind,
        bfd_vma val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *s, *buf;
  int stab_type;
  const char *kindstr;

  s = stab_pop_type (info);

  switch (kind)
    {
    default:
      abort ();

    case 132:
      stab_type = N_GSYM;
      kindstr = "G";
      break;

    case 128:
      stab_type = N_STSYM;
      kindstr = "S";
      break;

    case 130:
      stab_type = N_STSYM;
      kindstr = "V";
      break;

    case 131:
      stab_type = N_LSYM;
      kindstr = "";


      if (! ISDIGIT (*s))
 {
   char *n;
   long index;

   index = info->type_index;
   ++info->type_index;
   n = (char *) xmalloc (strlen (s) + 20);
   sprintf (n, "%ld=%s", index, s);
   free (s);
   s = n;
 }
      break;

    case 129:
      stab_type = N_RSYM;
      kindstr = "r";
      break;
    }

  buf = (char *) xmalloc (strlen (name) + strlen (s) + 3);
  sprintf (buf, "%s:%s%s", name, kindstr, s);
  free (s);

  if (! stab_write_symbol (info, stab_type, 0, val, buf))
    return FALSE;

  free (buf);

  return TRUE;
}
