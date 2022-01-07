
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct echoaudio {TYPE_1__* comm_page; struct firmware const* asic_code; } ;
typedef int s8 ;
struct TYPE_2__ {int monitors; } ;


 int DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC ;
 int ECHOGAIN_MUTED ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MONITOR_ARRAY_SIZE ;
 int kfree (int *) ;
 int * kmemdup (int ,int ,int ) ;
 scalar_t__ load_asic_generic (struct echoaudio*,int ,struct firmware const*) ;
 int memcpy (int ,int *,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int switch_asic(struct echoaudio *chip, const struct firmware *asic)
{
 s8 *monitors;


 if (asic != chip->asic_code) {
  monitors = kmemdup(chip->comm_page->monitors,
     MONITOR_ARRAY_SIZE, GFP_KERNEL);
  if (! monitors)
   return -ENOMEM;

  memset(chip->comm_page->monitors, ECHOGAIN_MUTED,
         MONITOR_ARRAY_SIZE);


  if (load_asic_generic(chip, DSP_FNC_LOAD_LAYLA24_EXTERNAL_ASIC,
          asic) < 0) {
   memcpy(chip->comm_page->monitors, monitors,
          MONITOR_ARRAY_SIZE);
   kfree(monitors);
   return -EIO;
  }
  chip->asic_code = asic;
  memcpy(chip->comm_page->monitors, monitors, MONITOR_ARRAY_SIZE);
  kfree(monitors);
 }

 return 0;
}
