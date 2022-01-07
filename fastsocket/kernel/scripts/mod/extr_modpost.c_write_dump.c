
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {struct symbol* next; int export; TYPE_1__* module; int name; int crc; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int SYMBOL_HASH_SIZE ;
 int buf_printf (struct buffer*,char*,int ,int ,int ,int ) ;
 scalar_t__ dump_sym (struct symbol*) ;
 int export_str (int ) ;
 struct symbol** symbolhash ;
 int write_if_changed (struct buffer*,char const*) ;

__attribute__((used)) static void write_dump(const char *fname)
{
 struct buffer buf = { };
 struct symbol *symbol;
 int n;

 for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
  symbol = symbolhash[n];
  while (symbol) {
   if (dump_sym(symbol))
    buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
     symbol->crc, symbol->name,
     symbol->module->name,
     export_str(symbol->export));
   symbol = symbol->next;
  }
 }
 write_if_changed(&buf, fname);
}
