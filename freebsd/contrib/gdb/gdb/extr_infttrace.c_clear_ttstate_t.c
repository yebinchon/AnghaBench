
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tts_event; scalar_t__ tts_user_tid; scalar_t__ tts_lwpid; scalar_t__ tts_pid; } ;
typedef TYPE_1__ ttstate_t ;


 int TTEVT_NONE ;

__attribute__((used)) static void
clear_ttstate_t (ttstate_t *tts)
{
  tts->tts_pid = 0;
  tts->tts_lwpid = 0;
  tts->tts_user_tid = 0;
  tts->tts_event = TTEVT_NONE;
}
