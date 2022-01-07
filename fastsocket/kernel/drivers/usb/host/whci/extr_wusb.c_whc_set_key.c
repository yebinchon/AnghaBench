
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ WUSBSECKEY ;
 scalar_t__ WUSBSETSECKEYCMD ;
 int WUSBSETSECKEYCMD_GTK ;
 int WUSBSETSECKEYCMD_IDX (int ) ;
 int WUSBSETSECKEYCMD_SET ;
 scalar_t__ WUSBTKID ;
 int le_writel (int,scalar_t__) ;
 int memcpy (int*,void const*,size_t) ;
 int whci_wait_for (int *,scalar_t__,int,int ,int,char*) ;

__attribute__((used)) static int whc_set_key(struct whc *whc, u8 key_index, uint32_t tkid,
         const void *key, size_t key_size, bool is_gtk)
{
 uint32_t setkeycmd;
 uint32_t seckey[4];
 int i;
 int ret;

 memcpy(seckey, key, key_size);
 setkeycmd = WUSBSETSECKEYCMD_SET | WUSBSETSECKEYCMD_IDX(key_index);
 if (is_gtk)
  setkeycmd |= WUSBSETSECKEYCMD_GTK;

 le_writel(tkid, whc->base + WUSBTKID);
 for (i = 0; i < 4; i++)
  le_writel(seckey[i], whc->base + WUSBSECKEY + 4*i);
 le_writel(setkeycmd, whc->base + WUSBSETSECKEYCMD);

 ret = whci_wait_for(&whc->umc->dev, whc->base + WUSBSETSECKEYCMD,
       WUSBSETSECKEYCMD_SET, 0, 100, "set key");

 return ret;
}
