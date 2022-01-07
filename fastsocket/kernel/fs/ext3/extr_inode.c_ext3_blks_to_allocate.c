
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ Indirect ;


 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext3_blks_to_allocate(Indirect *branch, int k, unsigned long blks,
  int blocks_to_boundary)
{
 unsigned long count = 0;





 if (k > 0) {

  if (blks < blocks_to_boundary + 1)
   count += blks;
  else
   count += blocks_to_boundary + 1;
  return count;
 }

 count++;
 while (count < blks && count <= blocks_to_boundary &&
  le32_to_cpu(*(branch[0].p + count)) == 0) {
  count++;
 }
 return count;
}
