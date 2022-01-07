
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int dummy; } ;


 int RME9652_fs48 ;
 int RME9652_status_register ;
 int rme9652_read (struct snd_rme9652*,int ) ;
 scalar_t__ rme9652_running_double_speed (struct snd_rme9652*) ;

__attribute__((used)) static inline int rme9652_adat_sample_rate(struct snd_rme9652 *rme9652)
{
 if (rme9652_running_double_speed(rme9652)) {
  return (rme9652_read(rme9652, RME9652_status_register) &
   RME9652_fs48) ? 96000 : 88200;
 } else {
  return (rme9652_read(rme9652, RME9652_status_register) &
   RME9652_fs48) ? 48000 : 44100;
 }
}
