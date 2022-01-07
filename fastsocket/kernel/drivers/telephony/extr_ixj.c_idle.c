
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ recording; scalar_t__ playing; } ;
struct TYPE_6__ {scalar_t__ low; scalar_t__ high; } ;
struct TYPE_8__ {int play_mode; int rec_mode; TYPE_2__ flags; TYPE_1__ ssr; } ;
typedef TYPE_3__ IXJ ;


 scalar_t__ ixj_WriteDSPCommand (int,TYPE_3__*) ;

__attribute__((used)) static int idle(IXJ *j)
{
 if (ixj_WriteDSPCommand(0x0000, j))

  return 0;

 if (j->ssr.high || j->ssr.low) {
  return 0;
 } else {
  j->play_mode = -1;
  j->flags.playing = 0;
  j->rec_mode = -1;
  j->flags.recording = 0;
  return 1;
        }
}
