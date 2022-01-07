
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int usage(void)
{
 fprintf(stderr, "ihex2fw: Convert ihex files into binary "
  "representation for use by Linux kernel\n");
 fprintf(stderr, "usage: ihex2fw [<options>] <src.HEX> <dst.fw>\n");
 fprintf(stderr, "       -w: wide records (16-bit length)\n");
 fprintf(stderr, "       -s: sort records by address\n");
 fprintf(stderr, "       -j: include records for CS:IP/EIP address\n");
 return 1;
}
