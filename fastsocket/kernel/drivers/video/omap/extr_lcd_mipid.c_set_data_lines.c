
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mipid_device {int dummy; } ;


 int mipid_write (struct mipid_device*,int,int *,int) ;

__attribute__((used)) static void set_data_lines(struct mipid_device *md, int data_lines)
{
 u16 par;

 switch (data_lines) {
 case 16:
  par = 0x150;
  break;
 case 18:
  par = 0x160;
  break;
 case 24:
  par = 0x170;
  break;
 }
 mipid_write(md, 0x3a, (u8 *)&par, 2);
}
