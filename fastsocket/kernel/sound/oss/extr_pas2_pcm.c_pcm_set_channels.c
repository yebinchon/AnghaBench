
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pas_read (int) ;
 int pas_write (int,int) ;
 int pcm_channels ;
 int pcm_set_speed (int ) ;
 int pcm_speed ;

__attribute__((used)) static int pcm_set_channels(int arg)
{

 if ((arg != 1) && (arg != 2))
  return pcm_channels;

 if (arg != pcm_channels)
 {
  pas_write(pas_read(0xF8A) ^ 0x20, 0xF8A);

  pcm_channels = arg;
  pcm_set_speed(pcm_speed);
 }
 return pcm_channels;
}
