
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {scalar_t__ irq; int pci; scalar_t__ iores; scalar_t__ dsp_registers; int commpage_dma_buf; scalar_t__ comm_page; } ;


 int DE_INIT (char*) ;
 int free_irq (scalar_t__,struct echoaudio*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct echoaudio*) ;
 int pci_disable_device (int ) ;
 int release_and_free_resource (scalar_t__) ;
 int rest_in_peace (struct echoaudio*) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int snd_echo_free(struct echoaudio *chip)
{
 DE_INIT(("Stop DSP...\n"));
 if (chip->comm_page)
  rest_in_peace(chip);
 DE_INIT(("Stopped.\n"));

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

 if (chip->comm_page)
  snd_dma_free_pages(&chip->commpage_dma_buf);

 if (chip->dsp_registers)
  iounmap(chip->dsp_registers);

 if (chip->iores)
  release_and_free_resource(chip->iores);

 DE_INIT(("MMIO freed.\n"));

 pci_disable_device(chip->pci);


 kfree(chip);
 DE_INIT(("Chip freed.\n"));
 return 0;
}
