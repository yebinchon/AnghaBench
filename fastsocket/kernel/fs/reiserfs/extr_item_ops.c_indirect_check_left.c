
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int UNFM_P_SIZE ;

__attribute__((used)) static int indirect_check_left(struct virtual_item *vi, int free,
          int start_skip, int end_skip)
{
 int bytes;

 bytes = free - free % UNFM_P_SIZE;
 return bytes ? : -1;
}
