
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ FILENAME_CMP (scalar_t__,char*) ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 int TRUE ;
 int free (char*) ;
 scalar_t__ ld_canon_sysroot ;
 int ld_canon_sysroot_len ;
 char* lrealpath (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static bfd_boolean
is_sysrooted_pathname (const char *name, bfd_boolean notsame)
{
  char * realname = ld_canon_sysroot ? lrealpath (name) : ((void*)0);
  int len;
  bfd_boolean result;

  if (! realname)
    return FALSE;

  len = strlen (realname);

  if (((! notsame && len == ld_canon_sysroot_len)
       || (len >= ld_canon_sysroot_len
    && IS_DIR_SEPARATOR (realname[ld_canon_sysroot_len])
    && (realname[ld_canon_sysroot_len] = '\0') == '\0'))
      && FILENAME_CMP (ld_canon_sysroot, realname) == 0)
    result = TRUE;
  else
    result = FALSE;

  if (realname)
    free (realname);

  return result;
}
