
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OFFSET_SAMPLERATE ;
 int SAMPLERATE_RATIO ;
 int snd_sf_linear_to_log (int,int ,int ) ;

__attribute__((used)) static int
calc_rate_offset(int hz)
{
 return snd_sf_linear_to_log(hz, OFFSET_SAMPLERATE, SAMPLERATE_RATIO);
}
