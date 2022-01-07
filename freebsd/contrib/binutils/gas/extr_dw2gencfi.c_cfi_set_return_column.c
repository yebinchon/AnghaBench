
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* frch_cfi_data; } ;
struct TYPE_5__ {TYPE_1__* cur_fde_data; } ;
struct TYPE_4__ {unsigned int return_column; } ;


 TYPE_3__* frchain_now ;

void
cfi_set_return_column (unsigned regno)
{
  frchain_now->frch_cfi_data->cur_fde_data->return_column = regno;
}
