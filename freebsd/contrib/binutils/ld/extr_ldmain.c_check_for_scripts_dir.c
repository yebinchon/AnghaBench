
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ S_ISDIR (int ) ;
 int free (char*) ;
 int ldfile_add_library_path (char*,int ) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 size_t strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static bfd_boolean
check_for_scripts_dir (char *dir)
{
  size_t dirlen;
  char *buf;
  struct stat s;
  bfd_boolean res;

  dirlen = strlen (dir);

  buf = xmalloc (dirlen + sizeof ("/ldscripts"));
  sprintf (buf, "%s/ldscripts", dir);

  res = stat (buf, &s) == 0 && S_ISDIR (s.st_mode);
  free (buf);
  if (res)
    ldfile_add_library_path (dir, FALSE);
  return res;
}
