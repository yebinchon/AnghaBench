
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ mtime; } ;
typedef TYPE_1__ file_info ;


 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int abspath (int ,char*) ;
 char* alloca (size_t) ;
 int check_aux_info (int) ;
 TYPE_1__* find_file (int ,int ) ;
 int invocation_filename ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int
referenced_file_is_newer (const char *l, time_t aux_info_mtime)
{
  const char *p;
  file_info *fi_p;
  char *filename;

  check_aux_info (l[0] == '/');
  check_aux_info (l[1] == '*');
  check_aux_info (l[2] == ' ');

  {
    const char *filename_start = p = l + 3;

    while (*p != ':'



    )
      p++;
    filename = alloca ((size_t) (p - filename_start) + 1);
    strncpy (filename, filename_start, (size_t) (p - filename_start));
    filename[p-filename_start] = '\0';
  }






  fi_p = find_file (abspath (invocation_filename, filename), 0);

  return (fi_p->mtime > aux_info_mtime);
}
