
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int dummy; } ;


 scalar_t__ ARM_DEMANGLING ;
 scalar_t__ AUTO_DEMANGLING ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ HP_DEMANGLING ;
 int consume_count (char const**) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
arm_pt (struct work_stuff *work, const char *mangled,
        int n, const char **anchor, const char **args)
{


  if ((ARM_DEMANGLING || HP_DEMANGLING) && (*anchor = strstr (mangled, "__pt__")))
    {
      int len;
      *args = *anchor + 6;
      len = consume_count (args);
      if (len == -1)
 return 0;
      if (*args + len == mangled + n && **args == '_')
 {
   ++*args;
   return 1;
 }
    }
  if (AUTO_DEMANGLING || EDG_DEMANGLING)
    {
      if ((*anchor = strstr (mangled, "__tm__"))
          || (*anchor = strstr (mangled, "__ps__"))
          || (*anchor = strstr (mangled, "__pt__")))
        {
          int len;
          *args = *anchor + 6;
          len = consume_count (args);
   if (len == -1)
     return 0;
          if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
              return 1;
            }
        }
      else if ((*anchor = strstr (mangled, "__S")))
        {
    int len;
    *args = *anchor + 3;
    len = consume_count (args);
   if (len == -1)
     return 0;
    if (*args + len == mangled + n && **args == '_')
            {
              ++*args;
        return 1;
            }
        }
    }

  return 0;
}
