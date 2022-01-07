
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct dlfb_data* context; } ;
struct dlfb_data {int done; } ;


 int complete (int *) ;

__attribute__((used)) static void dlfb_bulk_callback(struct urb *urb)
{
 struct dlfb_data *dev_info = urb->context;
 complete(&dev_info->done);
}
