
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cplus_demangle (char*,int ) ;
 int flags ;
 int free (char*) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 scalar_t__ strip_underscore ;

__attribute__((used)) static void
demangle_it (char *mangled_name)
{
  char *result;
  unsigned int skip_first = 0;




  if (mangled_name[0] == '.' || mangled_name[0] == '$')
    ++skip_first;
  if (strip_underscore && mangled_name[skip_first] == '_')
    ++skip_first;

  result = cplus_demangle (mangled_name + skip_first, flags);

  if (result == ((void*)0))
    printf ("%s",mangled_name);
  else
    {
      if (mangled_name[0] == '.')
 putchar ('.');
      printf ("%s",result);
      free (result);
    }
}
