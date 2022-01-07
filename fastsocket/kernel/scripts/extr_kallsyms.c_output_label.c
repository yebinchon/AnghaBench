
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int symbol_prefix_char ;

__attribute__((used)) static void output_label(char *label)
{
 if (symbol_prefix_char)
  printf(".globl %c%s\n", symbol_prefix_char, label);
 else
  printf(".globl %s\n", label);
 printf("\tALGN\n");
 if (symbol_prefix_char)
  printf("%c%s:\n", symbol_prefix_char, label);
 else
  printf("%s:\n", label);
}
