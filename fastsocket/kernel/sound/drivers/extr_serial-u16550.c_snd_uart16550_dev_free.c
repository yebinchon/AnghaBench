
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {int dummy; } ;
struct snd_device {struct snd_uart16550* device_data; } ;


 int snd_uart16550_free (struct snd_uart16550*) ;

__attribute__((used)) static int snd_uart16550_dev_free(struct snd_device *device)
{
 struct snd_uart16550 *uart = device->device_data;
 return snd_uart16550_free(uart);
}
