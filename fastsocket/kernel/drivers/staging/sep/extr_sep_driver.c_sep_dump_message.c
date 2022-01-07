
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sep_device {scalar_t__ shared_addr; } ;


 int edbg (char*,int,int ) ;

__attribute__((used)) static void sep_dump_message(struct sep_device *sep)
{
 int count;
 for (count = 0; count < 12 * 4; count += 4)
  edbg("Word %d of the message is %u\n", count, *((u32 *) (sep->shared_addr + count)));
}
