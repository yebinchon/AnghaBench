
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_range {int line_list; int * path; } ;


 int ENOMEM ;
 int line_list__add_line (int *,unsigned int) ;
 int * strdup (char const*) ;

__attribute__((used)) static int line_range_add_line(const char *src, unsigned int lineno,
          struct line_range *lr)
{

 if (!lr->path) {
  lr->path = strdup(src);
  if (lr->path == ((void*)0))
   return -ENOMEM;
 }
 return line_list__add_line(&lr->line_list, lineno);
}
