
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opts; } ;
typedef TYPE_1__ cpp_reader ;
typedef int cpp_options ;



cpp_options *
cpp_get_options (cpp_reader *pfile)
{
  return &pfile->opts;
}
