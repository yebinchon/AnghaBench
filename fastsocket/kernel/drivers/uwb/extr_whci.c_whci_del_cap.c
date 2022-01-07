
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whci_card {struct umc_dev** devs; } ;
struct umc_dev {int dummy; } ;


 int umc_device_unregister (struct umc_dev*) ;

__attribute__((used)) static void whci_del_cap(struct whci_card *card, int n)
{
 struct umc_dev *umc = card->devs[n];

 if (umc != ((void*)0))
  umc_device_unregister(umc);
}
