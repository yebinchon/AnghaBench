
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 int REG_6 ;
 int REG_9 ;
 int WRITE_WORD (int,struct stifb_info*,int ) ;

__attribute__((used)) static void
SET_ATTR_SIZE(struct stifb_info *fb, int width, int height)
{







 WRITE_WORD(0x00000000, fb, REG_6);
 WRITE_WORD((width<<16) | height, fb, REG_9);
 WRITE_WORD(0x05000000, fb, REG_6);
 WRITE_WORD(0x00040001, fb, REG_9);
}
