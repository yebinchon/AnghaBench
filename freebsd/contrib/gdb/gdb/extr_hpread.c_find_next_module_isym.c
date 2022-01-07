
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quick_module_entry ;
typedef int PXDB_header_ptr ;


 int CURR_MODULE_ISYM ;
 scalar_t__ VALID_CURR_MODULE ;

__attribute__((used)) static int
find_next_module_isym (int index, quick_module_entry *qMD, int curr_md,
         PXDB_header_ptr pxdb_header_p)
{
  while (VALID_CURR_MODULE)
    {
      if (CURR_MODULE_ISYM >= index)
 return CURR_MODULE_ISYM - 1;
      curr_md++;
    }
  return 0;
}
