
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_header {int include_dirs_size; char** include_dirs; int num_include_dirs; } ;


 char** xmalloc (int) ;
 char** xrealloc (char**,int) ;

__attribute__((used)) static void
add_include_dir (struct line_header *lh, char *include_dir)
{

  if (lh->include_dirs_size == 0)
    {
      lh->include_dirs_size = 1;
      lh->include_dirs = xmalloc (lh->include_dirs_size
                                  * sizeof (*lh->include_dirs));
    }
  else if (lh->num_include_dirs >= lh->include_dirs_size)
    {
      lh->include_dirs_size *= 2;
      lh->include_dirs = xrealloc (lh->include_dirs,
                                   (lh->include_dirs_size
                                    * sizeof (*lh->include_dirs)));
    }

  lh->include_dirs[lh->num_include_dirs++] = include_dir;
}
