
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {scalar_t__* srcversion; } ;
struct buffer {int dummy; } ;


 int buf_printf (struct buffer*,char*,...) ;

__attribute__((used)) static void add_srcversion(struct buffer *b, struct module *mod)
{
 if (mod->srcversion[0]) {
  buf_printf(b, "\n");
  buf_printf(b, "MODULE_INFO(srcversion, \"%s\");\n",
      mod->srcversion);
 }
}
