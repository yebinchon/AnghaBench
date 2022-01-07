
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int N_LSYM ;
 int TRUE ;
 int free (char*) ;
 int sprintf (char*,char*,char const*,double) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_float_constant (void *p, const char *name, double val)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *buf;

  buf = (char *) xmalloc (strlen (name) + 20);
  sprintf (buf, "%s:c=f%g", name, val);

  if (! stab_write_symbol (info, N_LSYM, 0, 0, buf))
    return FALSE;

  free (buf);

  return TRUE;
}
