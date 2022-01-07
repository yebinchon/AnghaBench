
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid_device {int revision; } ;


 int ls041y3_esd_check_mode1 (struct mipid_device*) ;
 int ls041y3_esd_check_mode2 (struct mipid_device*) ;

__attribute__((used)) static void ls041y3_esd_check(struct mipid_device *md)
{
 ls041y3_esd_check_mode1(md);
 if (md->revision >= 0x88)
  ls041y3_esd_check_mode2(md);
}
