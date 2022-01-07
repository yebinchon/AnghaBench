
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int memory_error (int,int ) ;
 int target_read_memory (int ,char*,int) ;

void
read_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  int status;
  status = target_read_memory (memaddr, myaddr, len);
  if (status != 0)
    memory_error (status, memaddr);
}
