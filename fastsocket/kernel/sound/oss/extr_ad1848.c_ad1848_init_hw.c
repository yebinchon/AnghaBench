
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ model; int audio_flags; } ;
typedef TYPE_1__ ad1848_info ;


 int DMA_DUPLEX ;
 scalar_t__ MD_1845 ;
 scalar_t__ MD_1845_SSCAPE ;
 scalar_t__ MD_1848 ;
 scalar_t__ MD_4236 ;
 scalar_t__ MD_IWAVE ;
 int ad1848_mixer_reset (TYPE_1__*) ;
 int ad_enter_MCE (TYPE_1__*) ;
 int ad_leave_MCE (TYPE_1__*) ;
 int ad_mute (TYPE_1__*) ;
 int ad_read (TYPE_1__*,int) ;
 int ad_unmute (TYPE_1__*) ;
 int ad_write (TYPE_1__*,int,int) ;
 int io_Status (TYPE_1__*) ;
 int outb (int ,int ) ;
 scalar_t__ soundpro ;

__attribute__((used)) static void ad1848_init_hw(ad1848_info * devc)
{
 int i;
 int *init_values;




 static int init_values_a[] =
 {
  0xa8, 0xa8, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
  0x00, 0x0c, 0x02, 0x00, 0x8a, 0x01, 0x00, 0x00,


  0x80, 0x00, 0x10, 0x10, 0x00, 0x00, 0x1f, 0x40,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };

 static int init_values_b[] =
 {
  0xa8, 0xa8, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
  0x00, 0x00, 0x06, 0x00, 0xe0, 0x01, 0x00, 0x00,
   0x80, 0x00, 0x10, 0x10, 0x00, 0x00, 0x1f, 0x40,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };





 init_values = init_values_a;
 if(devc->model >= MD_4236)
  init_values = init_values_b;

 for (i = 0; i < 16; i++)
  ad_write(devc, i, init_values[i]);


 ad_mute(devc);
 ad_unmute(devc);

 if (devc->model > MD_1848)
 {
  if (devc->model == MD_1845_SSCAPE)
   ad_write(devc, 12, ad_read(devc, 12) | 0x50);
  else
   ad_write(devc, 12, ad_read(devc, 12) | 0x40);

  if (devc->model == MD_IWAVE)
   ad_write(devc, 12, 0x6c);

  if (devc->model != MD_1845_SSCAPE)
   for (i = 16; i < 32; i++)
    ad_write(devc, i, init_values[i]);

  if (devc->model == MD_IWAVE)
   ad_write(devc, 16, 0x30);
 }
 if (devc->model > MD_1848)
 {
  if (devc->audio_flags & DMA_DUPLEX)
   ad_write(devc, 9, ad_read(devc, 9) & ~0x04);
  else
   ad_write(devc, 9, ad_read(devc, 9) | 0x04);

  if (devc->model == MD_1845 || devc->model == MD_1845_SSCAPE)
   ad_write(devc, 27, ad_read(devc, 27) | 0x08);

  if (devc->model == MD_IWAVE)
  {
   ad_write(devc, 12, 0x6c);
   ad_write(devc, 16, 0x30);
   ad_write(devc, 17, 0xc2);
  }
 }
 else
 {
    devc->audio_flags &= ~DMA_DUPLEX;
    ad_write(devc, 9, ad_read(devc, 9) | 0x04);
    if (soundpro)
     ad_write(devc, 12, ad_read(devc, 12) | 0x40);
 }

 outb((0), io_Status(devc));





 ad_enter_MCE(devc);
 ad_leave_MCE(devc);

 ad1848_mixer_reset(devc);
}
