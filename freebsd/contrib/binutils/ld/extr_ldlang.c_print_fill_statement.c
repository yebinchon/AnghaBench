
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fill; } ;
typedef TYPE_2__ lang_fill_statement_type ;
struct TYPE_7__ {int map_file; } ;
struct TYPE_5__ {unsigned char* data; size_t size; } ;


 TYPE_4__ config ;
 int fprintf (int ,char*,unsigned char) ;
 int fputs (char*,int ) ;

__attribute__((used)) static void
print_fill_statement (lang_fill_statement_type *fill)
{
  size_t size;
  unsigned char *p;
  fputs (" FILL mask 0x", config.map_file);
  for (p = fill->fill->data, size = fill->fill->size; size != 0; p++, size--)
    fprintf (config.map_file, "%02x", *p);
  fputs ("\n", config.map_file);
}
