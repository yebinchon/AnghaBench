
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {struct oxygen* private_data; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int (* cleanup ) (struct oxygen*) ;} ;
struct oxygen {TYPE_1__ model; } ;


 int oxygen_shutdown (struct oxygen*) ;
 struct snd_card* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct oxygen*) ;

void oxygen_pci_shutdown(struct pci_dev *pci)
{
 struct snd_card *card = pci_get_drvdata(pci);
 struct oxygen *chip = card->private_data;

 oxygen_shutdown(chip);
 chip->model.cleanup(chip);
}
