
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int sd_part_size(struct virtual_item *vi, int first, int count)
{
 BUG_ON(count);
 return 0;
}
