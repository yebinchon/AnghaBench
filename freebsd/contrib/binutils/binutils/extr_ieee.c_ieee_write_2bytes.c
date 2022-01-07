
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef int bfd_boolean ;


 scalar_t__ ieee_write_byte (struct ieee_handle*,int) ;

__attribute__((used)) static bfd_boolean
ieee_write_2bytes (struct ieee_handle *info, int i)
{
  return (ieee_write_byte (info, i >> 8)
   && ieee_write_byte (info, i & 0xff));
}
