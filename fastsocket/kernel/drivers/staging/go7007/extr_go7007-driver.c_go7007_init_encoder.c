
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct go7007 {scalar_t__ board_id; TYPE_1__* board_info; } ;
struct TYPE_2__ {int audio_flags; } ;


 int GO7007_AUDIO_I2S_MASTER ;
 scalar_t__ GO7007_BOARDID_MATRIX_REV ;
 int go7007_write_addr (struct go7007*,int,int) ;

__attribute__((used)) static int go7007_init_encoder(struct go7007 *go)
{
 if (go->board_info->audio_flags & GO7007_AUDIO_I2S_MASTER) {
  go7007_write_addr(go, 0x1000, 0x0811);
  go7007_write_addr(go, 0x1000, 0x0c11);
 }
 if (go->board_id == GO7007_BOARDID_MATRIX_REV) {

  go7007_write_addr(go, 0x3c82, 0x0001);
  go7007_write_addr(go, 0x3c80, 0x00fe);
 }
 return 0;
}
