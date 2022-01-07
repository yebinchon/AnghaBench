
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;
struct console_font {int dummy; } ;


 int newport_set_font (int ,struct console_font*) ;

__attribute__((used)) static int newport_font_set(struct vc_data *vc, struct console_font *font, unsigned flags)
{
 return newport_set_font(vc->vc_num, font);
}
