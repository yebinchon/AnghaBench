
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_6__ {TYPE_2__* frch_cfi_data; } ;
struct TYPE_5__ {TYPE_1__* cur_fde_data; } ;
struct TYPE_4__ {int * end_address; } ;


 TYPE_3__* frchain_now ;
 int free (TYPE_2__*) ;

void
cfi_end_fde (symbolS *label)
{
  frchain_now->frch_cfi_data->cur_fde_data->end_address = label;
  free (frchain_now->frch_cfi_data);
  frchain_now->frch_cfi_data = ((void*)0);
}
