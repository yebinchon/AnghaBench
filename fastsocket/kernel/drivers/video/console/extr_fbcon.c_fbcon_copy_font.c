
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console_font {scalar_t__ data; int height; int width; } ;
struct vc_data {struct console_font vc_font; } ;
struct display {scalar_t__ fontdata; int userfont; } ;


 struct display* fb_display ;
 int fbcon_do_set_font (struct vc_data*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int fbcon_copy_font(struct vc_data *vc, int con)
{
 struct display *od = &fb_display[con];
 struct console_font *f = &vc->vc_font;

 if (od->fontdata == f->data)
  return 0;
 return fbcon_do_set_font(vc, f->width, f->height, od->fontdata, od->userfont);
}
