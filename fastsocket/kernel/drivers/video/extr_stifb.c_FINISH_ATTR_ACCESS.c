
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_12 ;
 int SETUP_HW (struct stifb_info*) ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
FINISH_ATTR_ACCESS(struct stifb_info *fb)
{
 SETUP_HW(fb);
 WRITE_WORD(0x00000000, fb, REG_12);
}
