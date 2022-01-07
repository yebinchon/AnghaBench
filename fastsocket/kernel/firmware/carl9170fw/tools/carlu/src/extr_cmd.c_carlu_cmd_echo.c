
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ const uint32_t ;
struct carlu {int dummy; } ;
typedef int message ;
typedef int _message ;


 int CARL9170_CMD_ECHO ;
 int EIO ;
 int carlusb_cmd (struct carlu*,int ,int *,int,int *,int) ;

int carlu_cmd_echo(struct carlu *ar, const uint32_t message)
{
 uint32_t _message;
 int ret;

 ret = carlusb_cmd(ar, CARL9170_CMD_ECHO,
        (uint8_t *)&message, sizeof(message),
        (uint8_t *)&_message, sizeof(_message));

 if (ret == 0)
  ret = (message == _message) ? 0 : -EIO;

 return ret;
}
