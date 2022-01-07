
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mf_sigusr1_received ;

void
__mf_sigusr1_handler (int num)
{
  __mf_sigusr1_received ++;
}
