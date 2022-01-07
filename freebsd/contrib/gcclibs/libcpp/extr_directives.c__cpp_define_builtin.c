
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int T_DEFINE ;
 scalar_t__ alloca (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int run_directive (int *,int ,char*,size_t) ;
 size_t strlen (char const*) ;

void
_cpp_define_builtin (cpp_reader *pfile, const char *str)
{
  size_t len = strlen (str);
  char *buf = (char *) alloca (len + 1);
  memcpy (buf, str, len);
  buf[len] = '\n';
  run_directive (pfile, T_DEFINE, buf, len);
}
