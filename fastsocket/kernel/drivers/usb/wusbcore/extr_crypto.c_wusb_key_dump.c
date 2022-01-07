
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_ERR ;
 int print_hex_dump (int ,char*,int ,int,int,void const*,size_t,int ) ;

__attribute__((used)) static void wusb_key_dump(const void *buf, size_t len)
{
 print_hex_dump(KERN_ERR, "  ", DUMP_PREFIX_OFFSET, 16, 1,
         buf, len, 0);
}
