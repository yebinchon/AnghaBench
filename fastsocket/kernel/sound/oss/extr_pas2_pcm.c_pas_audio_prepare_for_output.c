
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pas_audio_reset (int) ;

__attribute__((used)) static int pas_audio_prepare_for_output(int dev, int bsize, int bcount)
{
 pas_audio_reset(dev);
 return 0;
}
