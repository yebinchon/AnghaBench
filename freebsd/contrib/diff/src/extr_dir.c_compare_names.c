
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 scalar_t__ errno ;
 int error (int ,scalar_t__,char*,char const*,char const*) ;
 int failed_locale_specific_sorting ;
 int file_name_cmp (char const*,char const*) ;
 scalar_t__ ignore_file_name_case ;
 scalar_t__ locale_specific_sorting ;
 int longjmp (int ,int) ;
 int strcasecmp (char const*,char const*) ;
 int strcasecoll (char const*,char const*) ;
 int strcoll (char const*,char const*) ;

__attribute__((used)) static int
compare_names (char const *name1, char const *name2)
{
  if (locale_specific_sorting)
    {
      int r;
      errno = 0;
      if (ignore_file_name_case)
 r = strcasecoll (name1, name2);
      else
 r = strcoll (name1, name2);
      if (errno)
 {
   error (0, errno, _("cannot compare file names `%s' and `%s'"),
   name1, name2);
   longjmp (failed_locale_specific_sorting, 1);
 }
      return r;
    }

  return (ignore_file_name_case
   ? strcasecmp (name1, name2)
   : file_name_cmp (name1, name2));
}
