
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rec_codec; scalar_t__ play_codec; int play_mode; int rec_mode; int aec_level; } ;
typedef TYPE_1__ IXJ ;


 int AEC_OFF ;
 scalar_t__ G729 ;
 scalar_t__ G729B ;
 int ixj_WriteDSPCommand (int,TYPE_1__*) ;

__attribute__((used)) static void aec_stop(IXJ *j)
{
 j->aec_level = AEC_OFF;
 if (j->rec_codec == G729 || j->play_codec == G729 || j->rec_codec == G729B || j->play_codec == G729B) {
  ixj_WriteDSPCommand(0xE022, j);

  ixj_WriteDSPCommand(0x0700, j);
 }
 if (j->play_mode != -1 && j->rec_mode != -1)
 {
  ixj_WriteDSPCommand(0xB002, j);
 }
}
