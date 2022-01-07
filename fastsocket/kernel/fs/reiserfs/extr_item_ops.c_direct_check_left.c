
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;



__attribute__((used)) static int direct_check_left(struct virtual_item *vi, int free,
        int start_skip, int end_skip)
{
 int bytes;

 bytes = free - free % 8;
 return bytes ? : -1;
}
