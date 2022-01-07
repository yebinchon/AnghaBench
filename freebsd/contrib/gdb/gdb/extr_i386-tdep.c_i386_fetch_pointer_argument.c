
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int I386_ESP_REGNUM ;
 scalar_t__ get_frame_register_unsigned (struct frame_info*,int ) ;
 scalar_t__ read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_fetch_pointer_argument (struct frame_info *frame, int argi,
        struct type *type)
{
  CORE_ADDR sp = get_frame_register_unsigned (frame, I386_ESP_REGNUM);
  return read_memory_unsigned_integer (sp + (4 * (argi + 1)), 4);
}
