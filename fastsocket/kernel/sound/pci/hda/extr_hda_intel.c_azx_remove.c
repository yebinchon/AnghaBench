
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct pci_dev {int dev; } ;


 scalar_t__ pci_dev_run_wake (struct pci_dev*) ;
 struct snd_card* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_noresume (int *) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static void azx_remove(struct pci_dev *pci)
{
 struct snd_card *card = pci_get_drvdata(pci);

 if (pci_dev_run_wake(pci))
  pm_runtime_get_noresume(&pci->dev);

 if (card)
  snd_card_free(card);
 pm_runtime_disable(&pci->dev);
}
