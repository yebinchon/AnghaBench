
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int IT_INCLUDE ;
 int do_include_common (int *,int ) ;

__attribute__((used)) static void
do_include (cpp_reader *pfile)
{
  do_include_common (pfile, IT_INCLUDE);
}
