
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int dummy; } ;


 scalar_t__ CMD_ACK ;
 int CMD_SET_CONTROL ;
 int host_close (struct sscape_info*) ;
 int host_command3 (struct sscape_info*,int ,int,int) ;
 int host_open (struct sscape_info*) ;
 scalar_t__ host_read (struct sscape_info*) ;

__attribute__((used)) static void set_control(struct sscape_info *devc, int ctrl, int value)
{
 host_open(devc);
 host_command3(devc, CMD_SET_CONTROL, ctrl, value);
 if (host_read(devc) != CMD_ACK)
 {

 }
 host_close(devc);
}
