
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (char,int *) ;

__attribute__((used)) static void
indent(int amount, FILE *fp)
{
 while (amount >= 8) {
  putc('\t', fp);
  amount -= 8;
 }
 while (--amount >= 0) {
  putc(' ', fp);
 }
}
