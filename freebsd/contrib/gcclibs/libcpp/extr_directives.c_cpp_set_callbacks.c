
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb; } ;
typedef TYPE_1__ cpp_reader ;
typedef int cpp_callbacks ;



void
cpp_set_callbacks (cpp_reader *pfile, cpp_callbacks *cb)
{
  pfile->cb = *cb;
}
