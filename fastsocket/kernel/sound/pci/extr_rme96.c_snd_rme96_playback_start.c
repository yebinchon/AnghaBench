
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rme96 {scalar_t__ iobase; int wcreg; } ;


 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 scalar_t__ RME96_IO_RESET_PLAY_POS ;
 int RME96_WCR_START ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
snd_rme96_playback_start(struct rme96 *rme96,
    int from_pause)
{
 if (!from_pause) {
  writel(0, rme96->iobase + RME96_IO_RESET_PLAY_POS);
 }

 rme96->wcreg |= RME96_WCR_START;
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
}
