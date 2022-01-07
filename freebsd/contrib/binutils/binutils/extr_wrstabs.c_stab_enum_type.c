
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {long type_index; } ;
typedef scalar_t__ bfd_signed_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int N_LSYM ;
 int TRUE ;
 int assert (int ) ;
 int free (char*) ;
 int sprintf (char*,char*,char const*,...) ;
 int stab_push_defined_type (struct stab_write_handle*,long,int) ;
 int stab_push_string (struct stab_write_handle*,char*,int ,int ,int) ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ xmalloc (size_t) ;

__attribute__((used)) static bfd_boolean
stab_enum_type (void *p, const char *tag, const char **names,
  bfd_signed_vma *vals)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  size_t len;
  const char **pn;
  char *buf;
  long index = 0;
  bfd_signed_vma *pv;

  if (names == ((void*)0))
    {
      assert (tag != ((void*)0));

      buf = (char *) xmalloc (10 + strlen (tag));
      sprintf (buf, "xe%s:", tag);

      if (! stab_push_string (info, buf, 0, FALSE, 4))
 return FALSE;
      free (buf);
      return TRUE;
    }

  len = 10;
  if (tag != ((void*)0))
    len += strlen (tag);
  for (pn = names; *pn != ((void*)0); pn++)
    len += strlen (*pn) + 20;

  buf = (char *) xmalloc (len);

  if (tag == ((void*)0))
    strcpy (buf, "e");
  else
    {
      index = info->type_index;
      ++info->type_index;
      sprintf (buf, "%s:T%ld=e", tag, index);
    }

  for (pn = names, pv = vals; *pn != ((void*)0); pn++, pv++)
    sprintf (buf + strlen (buf), "%s:%ld,", *pn, (long) *pv);
  strcat (buf, ";");

  if (tag == ((void*)0))
    {

      if (! stab_push_string (info, buf, 0, FALSE, 4))
 return FALSE;
    }
  else
    {

      if (! stab_write_symbol (info, N_LSYM, 0, 0, buf)
   || ! stab_push_defined_type (info, index, 4))
 return FALSE;
    }

  free (buf);

  return TRUE;
}
