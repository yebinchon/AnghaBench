
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NDISKS ;
 int PAGE_SIZE ;
 int ** data ;
 int ** dataptrs ;
 int rand () ;

__attribute__((used)) static void makedata(void)
{
 int i, j;

 for (i = 0; i < NDISKS; i++) {
  for (j = 0; j < PAGE_SIZE; j++)
   data[i][j] = rand();

  dataptrs[i] = data[i];
 }
}
