
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_hash; } ;
typedef TYPE_1__ cpp_reader ;


 int htab_traverse (int ,int ,int*) ;
 int report_missing_guard ;

void
_cpp_report_missing_guards (cpp_reader *pfile)
{
  int banner = 0;

  htab_traverse (pfile->file_hash, report_missing_guard, &banner);
}
