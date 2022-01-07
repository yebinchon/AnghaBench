
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;
struct console_font {int dummy; } ;


 int newport_set_def_font (int ,struct console_font*) ;

__attribute__((used)) static int newport_font_default(struct vc_data *vc, struct console_font *op, char *name)
{
 return newport_set_def_font(vc->vc_num, op);
}
