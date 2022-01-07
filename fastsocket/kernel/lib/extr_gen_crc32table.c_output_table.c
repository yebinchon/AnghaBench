
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ENTRIES_PER_LINE ;
 int printf (char*,...) ;

__attribute__((used)) static void output_table(uint32_t table[], int len, char *trans)
{
 int i;

 for (i = 0; i < len - 1; i++) {
  if (i % ENTRIES_PER_LINE == 0)
   printf("\n");
  printf("%s(0x%8.8xL), ", trans, table[i]);
 }
 printf("%s(0x%8.8xL)\n", trans, table[len - 1]);
}
