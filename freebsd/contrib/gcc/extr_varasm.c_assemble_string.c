
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASM_OUTPUT_ASCII (int ,char const*,int) ;
 int asm_out_file ;

void
assemble_string (const char *p, int size)
{
  int pos = 0;
  int maximum = 2000;



  while (pos < size)
    {
      int thissize = size - pos;
      if (thissize > maximum)
 thissize = maximum;

      ASM_OUTPUT_ASCII (asm_out_file, p, thissize);

      pos += thissize;
      p += thissize;
    }
}
