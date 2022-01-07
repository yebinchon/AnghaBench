
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_buffer {int dummy; } ;
typedef int cpp_reader ;
typedef int cpp_dir ;


 struct cpp_buffer* cpp_get_buffer (int *) ;
 int * cpp_get_dir (scalar_t__) ;
 scalar_t__ cpp_get_file (struct cpp_buffer*) ;
 scalar_t__ cpp_get_path (scalar_t__) ;
 struct cpp_buffer* cpp_get_prev (struct cpp_buffer*) ;
 char* find_subframework_file (char const*,scalar_t__) ;

__attribute__((used)) static const char*
find_subframework_header (cpp_reader *pfile, const char *header, cpp_dir **dirp)
{
  const char *fname = header;
  struct cpp_buffer *b;
  const char *n;

  for (b = cpp_get_buffer (pfile);
       b && cpp_get_file (b) && cpp_get_path (cpp_get_file (b));
       b = cpp_get_prev (b))
    {
      n = find_subframework_file (fname, cpp_get_path (cpp_get_file (b)));
      if (n)
 {




   *dirp = cpp_get_dir (cpp_get_file (b));
   return n;
 }
    }

  return 0;
}
