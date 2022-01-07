
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char const*,int,int,int,void const*,size_t,int) ;

void print_hex_dump_bytes(const char *prefix_str, int prefix_type,
   const void *buf, size_t len)
{
 print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, 16, 1,
   buf, len, 1);
}
