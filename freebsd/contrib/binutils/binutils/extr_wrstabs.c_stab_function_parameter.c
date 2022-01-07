
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef enum debug_parm_kind { ____Placeholder_debug_parm_kind } debug_parm_kind ;
typedef int bfd_vma ;
typedef int bfd_boolean ;






 int FALSE ;
 int N_PSYM ;
 int N_RSYM ;
 int TRUE ;
 int abort () ;
 int free (char*) ;
 int sprintf (char*,char*,char const*,char,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_write_symbol (struct stab_write_handle*,int,int ,int ,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_function_parameter (void *p, const char *name, enum debug_parm_kind kind, bfd_vma val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *s, *buf;
  int stab_type;
  char kindc;

  s = stab_pop_type (info);

  switch (kind)
    {
    default:
      abort ();

    case 128:
      stab_type = N_PSYM;
      kindc = 'p';
      break;

    case 129:
      stab_type = N_RSYM;
      kindc = 'P';
      break;

    case 131:
      stab_type = N_PSYM;
      kindc = 'v';
      break;

    case 130:
      stab_type = N_RSYM;
      kindc = 'a';
      break;
    }

  buf = (char *) xmalloc (strlen (name) + strlen (s) + 3);
  sprintf (buf, "%s:%c%s", name, kindc, s);
  free (s);

  if (! stab_write_symbol (info, stab_type, 0, val, buf))
    return FALSE;

  free (buf);

  return TRUE;
}
