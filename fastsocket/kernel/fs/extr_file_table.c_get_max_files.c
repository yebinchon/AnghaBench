
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long max_files; } ;


 TYPE_1__ files_stat ;

unsigned long get_max_files(void)
{
 return files_stat.max_files;
}
