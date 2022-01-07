
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme32 {int wcreg; int playback_frlog; int capture_frlog; } ;


 int RME32_WCR_MODE24 ;

__attribute__((used)) static void
snd_rme32_setframelog(struct rme32 * rme32, int n_channels, int is_playback)
{
 int frlog;

 if (n_channels == 2) {
  frlog = 1;
 } else {

  frlog = 3;
 }
 if (is_playback) {
  frlog += (rme32->wcreg & RME32_WCR_MODE24) ? 2 : 1;
  rme32->playback_frlog = frlog;
 } else {
  frlog += (rme32->wcreg & RME32_WCR_MODE24) ? 2 : 1;
  rme32->capture_frlog = frlog;
 }
}
