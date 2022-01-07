
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_of_path (char const*,char const**) ;
 int main_input_baselength ;
 int main_input_basename ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static int
matches_main_base (const char *path)
{

  static const char *last_path = ((void*)0);
  static int last_match = 0;
  if (path != last_path)
    {
      const char *base;
      int length = base_of_path (path, &base);
      last_path = path;
      last_match = (length == main_input_baselength
                    && memcmp (base, main_input_basename, length) == 0);
    }
  return last_match;
}
