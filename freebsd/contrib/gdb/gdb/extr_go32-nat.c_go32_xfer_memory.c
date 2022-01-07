
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ read_child (int ,char*,int) ;
 scalar_t__ write_child (int ,char*,int) ;

__attribute__((used)) static int
go32_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
    struct mem_attrib *attrib, struct target_ops *target)
{
  if (write)
    {
      if (write_child (memaddr, myaddr, len))
 {
   return 0;
 }
      else
 {
   return len;
 }
    }
  else
    {
      if (read_child (memaddr, myaddr, len))
 {
   return 0;
 }
      else
 {
   return len;
 }
    }
}
