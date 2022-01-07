
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
 int sprintf (char*,char*,char const*,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_tag (void *p, const char *tag)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *s, *buf;

  s = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (tag) + strlen (s) + 3);

  sprintf (buf, "%s:T%s", tag, s);
  free (s);

  if (! stab_write_symbol (info, N_LSYM, 0, 0, buf))
    return FALSE;

  free (buf);

  return TRUE;
}
