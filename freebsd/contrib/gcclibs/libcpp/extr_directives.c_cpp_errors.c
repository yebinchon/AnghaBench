
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int errors; } ;
typedef TYPE_1__ cpp_reader ;



unsigned int
cpp_errors (cpp_reader *pfile)
{
  return pfile->errors;
}
