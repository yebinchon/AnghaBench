
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int T_DEFINE ;
 scalar_t__ alloca (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int run_directive (int *,int ,char*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

void
cpp_define (cpp_reader *pfile, const char *str)
{
  char *buf, *p;
  size_t count;





  count = strlen (str);
  buf = (char *) alloca (count + 3);
  memcpy (buf, str, count);

  p = strchr (str, '=');
  if (p)
    buf[p - str] = ' ';
  else
    {
      buf[count++] = ' ';
      buf[count++] = '1';
    }
  buf[count] = '\n';

  run_directive (pfile, T_DEFINE, buf, count);
}
