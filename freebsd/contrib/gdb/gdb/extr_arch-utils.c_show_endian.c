
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BFD_ENDIAN_BIG ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int printf_unfiltered (char*,char*) ;
 scalar_t__ target_byte_order_auto ;

__attribute__((used)) static void
show_endian (char *args, int from_tty)
{
  if (target_byte_order_auto)
    printf_unfiltered ("The target endianness is set automatically (currently %s endian)\n",
         (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? "big" : "little"));
  else
    printf_unfiltered ("The target is assumed to be %s endian\n",
         (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? "big" : "little"));
}
