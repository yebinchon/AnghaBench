
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tomoyo_file_matches_to_pattern2 (char const*,char const*,char const*,char const*) ;

__attribute__((used)) static bool tomoyo_file_matches_to_pattern(const char *filename,
        const char *filename_end,
        const char *pattern,
        const char *pattern_end)
{
 const char *pattern_start = pattern;
 bool first = 1;
 bool result;

 while (pattern < pattern_end - 1) {

  if (*pattern++ != '\\' || *pattern++ != '-')
   continue;
  result = tomoyo_file_matches_to_pattern2(filename,
        filename_end,
        pattern_start,
        pattern - 2);
  if (first)
   result = !result;
  if (result)
   return 0;
  first = 0;
  pattern_start = pattern;
 }
 result = tomoyo_file_matches_to_pattern2(filename, filename_end,
       pattern_start, pattern_end);
 return first ? result : !result;
}
