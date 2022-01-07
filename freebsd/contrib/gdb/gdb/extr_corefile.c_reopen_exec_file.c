
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {long st_mtime; } ;


 int bfd_get_filename (int *) ;
 long bfd_get_mtime (int *) ;
 int bfd_reopen (int *) ;
 int * exec_bfd ;
 int exec_open (char*,int ) ;
 int make_cleanup (int ,char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (int ,char*) ;
 int target_shortname ;
 int xfree ;
 char* xstrdup (int ) ;

void
reopen_exec_file (void)
{




  char *filename;
  int res;
  struct stat st;
  long mtime;


  if (exec_bfd == ((void*)0) || strcmp (target_shortname, "exec") != 0)
    return;


  filename = xstrdup (bfd_get_filename (exec_bfd));
  make_cleanup (xfree, filename);
  mtime = bfd_get_mtime (exec_bfd);
  res = stat (filename, &st);

  if (mtime && mtime != st.st_mtime)
    {
      exec_open (filename, 0);
    }

}
