
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lc_reason { ____Placeholder_lc_reason } lc_reason ;
typedef int cpp_reader ;


 int _cpp_do_file_change (int *,int,char const*,int,int ) ;

void
cpp_change_file (cpp_reader *pfile, enum lc_reason reason,
   const char *new_name)
{
  _cpp_do_file_change (pfile, reason, new_name, 1, 0);
}
