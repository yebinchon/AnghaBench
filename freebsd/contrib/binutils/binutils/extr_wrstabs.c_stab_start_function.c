
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {scalar_t__ nesting; int fun_offset; int symbols_size; } ;
typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 int N_FUN ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*,float,char*) ;
 char* stab_pop_type (struct stab_write_handle*) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static bfd_boolean
stab_start_function (void *p, const char *name, bfd_boolean globalp)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *rettype, *buf;

  assert (info->nesting == 0 && info->fun_offset == -1);

  rettype = stab_pop_type (info);

  buf = (char *) xmalloc (strlen (name) + strlen (rettype) + 3);
  sprintf (buf, "%s:%c%s", name,
    globalp ? 'F' : 'f',
    rettype);


  info->fun_offset = info->symbols_size;

  if (! stab_write_symbol (info, N_FUN, 0, 0, buf))
    return FALSE;

  free (buf);

  return TRUE;
}
