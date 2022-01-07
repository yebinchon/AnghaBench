
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int T_ASSERT ;
 int handle_assertion (int *,char const*,int ) ;

void
cpp_assert (cpp_reader *pfile, const char *str)
{
  handle_assertion (pfile, str, T_ASSERT);
}
