
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_attrib {int mode; int width; scalar_t__ verify; scalar_t__ cache; scalar_t__ hwbreak; } ;
struct mem_region {scalar_t__ hi; struct mem_attrib attrib; scalar_t__ lo; scalar_t__ enabled_p; int number; struct mem_region* next; } ;
 int TARGET_ADDR_BIT ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* local_hex_string_custom (unsigned long,char*) ;
 struct mem_region* mem_region_chain ;
 int printf_filtered (char*,...) ;
 int printf_unfiltered (char*) ;

__attribute__((used)) static void
mem_info_command (char *args, int from_tty)
{
  struct mem_region *m;
  struct mem_attrib *attrib;

  if (!mem_region_chain)
    {
      printf_unfiltered ("There are no memory regions defined.\n");
      return;
    }

  printf_filtered ("Num ");
  printf_filtered ("Enb ");
  printf_filtered ("Low Addr   ");
  if (TARGET_ADDR_BIT > 32)
    printf_filtered ("        ");
  printf_filtered ("High Addr  ");
  if (TARGET_ADDR_BIT > 32)
    printf_filtered ("        ");
  printf_filtered ("Attrs ");
  printf_filtered ("\n");

  for (m = mem_region_chain; m; m = m->next)
    {
      char *tmp;
      printf_filtered ("%-3d %-3c\t",
         m->number,
         m->enabled_p ? 'y' : 'n');
      if (TARGET_ADDR_BIT <= 32)
 tmp = local_hex_string_custom ((unsigned long) m->lo, "08l");
      else
 tmp = local_hex_string_custom ((unsigned long) m->lo, "016l");

      printf_filtered ("%s ", tmp);

      if (TARGET_ADDR_BIT <= 32)
 {
 if (m->hi == 0)
   tmp = "0x100000000";
 else
   tmp = local_hex_string_custom ((unsigned long) m->hi, "08l");
 }
      else
 {
 if (m->hi == 0)
   tmp = "0x10000000000000000";
 else
   tmp = local_hex_string_custom ((unsigned long) m->hi, "016l");
 }

      printf_filtered ("%s ", tmp);
      attrib = &m->attrib;
      switch (attrib->mode)
 {
 case 134:
   printf_filtered ("rw ");
   break;
 case 135:
   printf_filtered ("ro ");
   break;
 case 128:
   printf_filtered ("wo ");
   break;
 }

      switch (attrib->width)
 {
 case 130:
   printf_filtered ("8 ");
   break;
 case 133:
   printf_filtered ("16 ");
   break;
 case 132:
   printf_filtered ("32 ");
   break;
 case 131:
   printf_filtered ("64 ");
   break;
 case 129:
   break;
 }
      if (attrib->cache)
 printf_filtered ("cache ");
      else
 printf_filtered ("nocache ");
      printf_filtered ("\n");

      gdb_flush (gdb_stdout);
    }
}
