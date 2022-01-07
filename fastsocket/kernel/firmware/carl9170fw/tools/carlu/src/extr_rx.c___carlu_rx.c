
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct carlu {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct carl9170_rsp {TYPE_1__ hdr; } ;


 int carlu_handle_command (struct carlu*,struct carl9170_rsp*,scalar_t__) ;
 int carlu_handle_data (struct carlu*,int*,unsigned int) ;

__attribute__((used)) static void __carlu_rx(struct carlu *ar, uint8_t *buf, unsigned int len)
{
 unsigned int i;

 i = 0;


 while (len > 2 && i < 12 && buf[0] == 0xff && buf[1] == 0xff) {
  i += 2;
  len -= 2;
  buf += 2;
 }

 if (i == 12) {
  struct carl9170_rsp *cmd;
  i = 0;

  while (i < len) {
   cmd = (void *) &buf[i];

   carlu_handle_command(ar, cmd, cmd->hdr.len + 4);
   i += cmd->hdr.len + 4;
  }
 } else {
  carlu_handle_data(ar, buf, len);
 }
}
