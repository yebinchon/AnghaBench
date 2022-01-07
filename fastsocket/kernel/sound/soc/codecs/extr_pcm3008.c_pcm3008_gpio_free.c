
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm3008_setup_data {int pdda_pin; int pdad_pin; int dem1_pin; int dem0_pin; } ;


 int gpio_free (int ) ;

__attribute__((used)) static void pcm3008_gpio_free(struct pcm3008_setup_data *setup)
{
 gpio_free(setup->dem0_pin);
 gpio_free(setup->dem1_pin);
 gpio_free(setup->pdad_pin);
 gpio_free(setup->pdda_pin);
}
