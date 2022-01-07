
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct whci_card {struct umc_dev** devs; TYPE_3__* pci; scalar_t__ uwbbase; } ;
struct TYPE_4__ {int start; int end; TYPE_2__* parent; int flags; int name; } ;
struct umc_dev {int bar; int irq; TYPE_1__ resource; int dev; int cap_id; int version; } ;
struct TYPE_6__ {int irq; TYPE_2__* resource; int dev; } ;
struct TYPE_5__ {int flags; } ;


 int ENOMEM ;
 scalar_t__ UWBCAPDATA (int) ;
 int UWBCAPDATA_TO_BAR (int ) ;
 int UWBCAPDATA_TO_CAP_ID (int ) ;
 int UWBCAPDATA_TO_OFFSET (int ) ;
 int UWBCAPDATA_TO_SIZE (int ) ;
 int UWBCAPDATA_TO_VERSION (int ) ;
 int dev_name (int *) ;
 int kfree (struct umc_dev*) ;
 int le_readq (scalar_t__) ;
 int pci_resource_start (TYPE_3__*,int) ;
 struct umc_dev* umc_device_create (int *,int) ;
 int umc_device_register (struct umc_dev*) ;
 int whci_capdata_quirks (struct whci_card*,int ) ;

__attribute__((used)) static int whci_add_cap(struct whci_card *card, int n)
{
 struct umc_dev *umc;
 u64 capdata;
 int bar, err;

 umc = umc_device_create(&card->pci->dev, n);
 if (umc == ((void*)0))
  return -ENOMEM;

 capdata = le_readq(card->uwbbase + UWBCAPDATA(n));

 bar = UWBCAPDATA_TO_BAR(capdata) << 1;

 capdata = whci_capdata_quirks(card, capdata);


 umc->version = UWBCAPDATA_TO_VERSION(capdata);
 umc->cap_id = n == 0 ? 0 : UWBCAPDATA_TO_CAP_ID(capdata);
 umc->bar = bar;
 umc->resource.start = pci_resource_start(card->pci, bar)
  + UWBCAPDATA_TO_OFFSET(capdata);
 umc->resource.end = umc->resource.start
  + (n == 0 ? 0x20 : UWBCAPDATA_TO_SIZE(capdata)) - 1;
 umc->resource.name = dev_name(&umc->dev);
 umc->resource.flags = card->pci->resource[bar].flags;
 umc->resource.parent = &card->pci->resource[bar];
 umc->irq = card->pci->irq;

 err = umc_device_register(umc);
 if (err < 0)
  goto error;
 card->devs[n] = umc;
 return 0;

error:
 kfree(umc);
 return err;
}
