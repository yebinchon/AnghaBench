
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dma_callback_data; int (* dma_callback ) (int ) ;} ;


 TYPE_1__ lcdc ;
 int stub1 (int ) ;

__attribute__((used)) static void lcdc_dma_handler(u16 status, void *data)
{
 if (lcdc.dma_callback)
  lcdc.dma_callback(lcdc.dma_callback_data);
}
