
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lcdc_callback_data; int (* lcdc_callback ) (int ) ;} ;


 int _stop_transfer () ;
 TYPE_1__ rfbi ;
 int stub1 (int ) ;

__attribute__((used)) static void rfbi_dma_callback(void *data)
{
 _stop_transfer();
 rfbi.lcdc_callback(rfbi.lcdc_callback_data);
}
