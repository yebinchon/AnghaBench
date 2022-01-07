
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int T_UNASSERT ;
 int handle_assertion (int *,char const*,int ) ;

void
cpp_unassert (cpp_reader *pfile, const char *str)
{
  handle_assertion (pfile, str, T_UNASSERT);
}
