
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int T_UNDEF ;
 scalar_t__ alloca (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int run_directive (int *,int ,char*,size_t) ;
 size_t strlen (char const*) ;

void
cpp_undef (cpp_reader *pfile, const char *macro)
{
  size_t len = strlen (macro);
  char *buf = (char *) alloca (len + 1);
  memcpy (buf, macro, len);
  buf[len] = '\n';
  run_directive (pfile, T_UNDEF, buf, len);
}
