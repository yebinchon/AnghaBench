
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 scalar_t__ alloca (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int run_directive (int *,int,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
handle_assertion (cpp_reader *pfile, const char *str, int type)
{
  size_t count = strlen (str);
  const char *p = strchr (str, '=');



  char *buf = (char *) alloca (count + 2);

  memcpy (buf, str, count);
  if (p)
    {
      buf[p - str] = '(';
      buf[count++] = ')';
    }
  buf[count] = '\n';
  str = buf;

  run_directive (pfile, type, str, count);
}
