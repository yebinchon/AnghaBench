
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;


 int BFD_ENDIAN_UNKNOWN ;
 int target_byte_order ;
 scalar_t__ target_byte_order_auto ;

enum bfd_endian
selected_byte_order (void)
{
  if (target_byte_order_auto)
    return BFD_ENDIAN_UNKNOWN;
  else
    return target_byte_order;
}
