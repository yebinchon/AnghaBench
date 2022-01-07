
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;


 int BINDIR ;
 char* SCRIPTDIR ;
 int TOOLBINDIR ;
 scalar_t__ check_for_scripts_dir (char*) ;
 int free (char*) ;
 char* make_relative_prefix (char*,int ,char*) ;
 char* program_name ;
 int strcpy (char*,char*) ;
 int strncpy (char*,char*,size_t) ;
 char* strrchr (char*,char) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void
set_scripts_dir (void)
{
  char *end, *dir;
  size_t dirlen;
  bfd_boolean found;

  dir = make_relative_prefix (program_name, BINDIR, SCRIPTDIR);
  if (dir)
    {
      found = check_for_scripts_dir (dir);
      free (dir);
      if (found)
 return;
    }

  dir = make_relative_prefix (program_name, TOOLBINDIR, SCRIPTDIR);
  if (dir)
    {
      found = check_for_scripts_dir (dir);
      free (dir);
      if (found)
 return;
    }

  if (check_for_scripts_dir (SCRIPTDIR))

    return;


  end = strrchr (program_name, '/');
  if (end == ((void*)0))


    return;

  dirlen = end - program_name;


  dir = xmalloc (dirlen + 8);
  strncpy (dir, program_name, dirlen);
  dir[dirlen] = '\0';

  if (check_for_scripts_dir (dir))
    {
      free (dir);
      return;
    }


  strcpy (dir + dirlen, "/../lib");
  check_for_scripts_dir (dir);
  free (dir);
}
