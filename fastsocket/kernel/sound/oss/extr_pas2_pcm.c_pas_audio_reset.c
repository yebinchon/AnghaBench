
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int pas_read (int) ;
 int pas_write (int,int) ;
 int printk (char*) ;

__attribute__((used)) static void pas_audio_reset(int dev)
{
 DEB(printk("pas2_pcm.c: static void pas_audio_reset(void)\n"));

 pas_write(pas_read(0xF8A) & ~0x40, 0xF8A);
}
