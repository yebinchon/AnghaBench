
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int linebuf ;




 int hex_dump_to_buffer (int const*,int,int,int,unsigned char*,int,int) ;
 int min (int,int) ;
 int printk (char*,char const*,char const*,...) ;

void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
   int rowsize, int groupsize,
   const void *buf, size_t len, bool ascii)
{
 const u8 *ptr = buf;
 int i, linelen, remaining = len;
 unsigned char linebuf[200];

 if (rowsize != 16 && rowsize != 32)
  rowsize = 16;

 for (i = 0; i < len; i += rowsize) {
  linelen = min(remaining, rowsize);
  remaining -= rowsize;
  hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
    linebuf, sizeof(linebuf), ascii);

  switch (prefix_type) {
  case 129:
   printk("%s%s%*p: %s\n", level, prefix_str,
    (int)(2 * sizeof(void *)), ptr + i, linebuf);
   break;
  case 128:
   printk("%s%s%.8x: %s\n", level, prefix_str, i, linebuf);
   break;
  default:
   printk("%s%s%s\n", level, prefix_str, linebuf);
   break;
  }
 }
}
