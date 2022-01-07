
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMGL_ANSI ;
 int DMGL_PARAMS ;
 char* cplus_demangle (char const*,int) ;
 char* find_last_component (char*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

char *
method_name_from_physname (const char *physname)
{
  char *ret = ((void*)0);
  const char *end;
  int depth = 0;
  char *demangled_name = cplus_demangle (physname, DMGL_ANSI | DMGL_PARAMS);

  if (demangled_name == ((void*)0))
    return ((void*)0);

  end = find_last_component (demangled_name);
  if (end != ((void*)0))
    {
      char *args;
      int len;


      end = end + 2;


      args = strchr (end, '(');
      if (args == ((void*)0))
 len = strlen (end + 2);
      else
 {
   args --;
   while (*args == ' ')
     args --;
   len = args - end + 1;
 }
      ret = xmalloc (len + 1);
      memcpy (ret, end, len);
      ret[len] = 0;
    }

  xfree (demangled_name);
  return ret;
}
