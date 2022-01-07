
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int fbcon_putcs (struct vc_data*,unsigned short*,int,int,int) ;
 int scr_writew (int,unsigned short*) ;

__attribute__((used)) static void fbcon_putc(struct vc_data *vc, int c, int ypos, int xpos)
{
 unsigned short chr;

 scr_writew(c, &chr);
 fbcon_putcs(vc, &chr, 1, ypos, xpos);
}
