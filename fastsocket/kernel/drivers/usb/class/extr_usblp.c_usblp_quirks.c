
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ __u16 ;
struct TYPE_2__ {scalar_t__ vendorId; scalar_t__ productId; unsigned int quirks; } ;


 TYPE_1__* quirk_printers ;

__attribute__((used)) static unsigned int usblp_quirks (__u16 vendor, __u16 product)
{
 int i;

 for (i = 0; quirk_printers[i].vendorId; i++) {
  if (vendor == quirk_printers[i].vendorId &&
      product == quirk_printers[i].productId)
   return quirk_printers[i].quirks;
  }
 return 0;
}
