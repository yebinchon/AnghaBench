
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEB (int ) ;
 int SOUND_MIXER_NRDEVICES ;
 int * levels ;
 int pas_mixer_set (int,int ) ;
 int printk (char*) ;
 int set_mode (int) ;

__attribute__((used)) static void
pas_mixer_reset(void)
{
 int foo;

 DEB(printk("pas2_mixer.c: void pas_mixer_reset(void)\n"));

 for (foo = 0; foo < SOUND_MIXER_NRDEVICES; foo++)
  pas_mixer_set(foo, levels[foo]);

 set_mode(0x04 | 0x01);
}
