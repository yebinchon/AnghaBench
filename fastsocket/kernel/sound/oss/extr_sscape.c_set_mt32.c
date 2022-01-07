
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sscape_info {int dummy; } ;


 scalar_t__ CMD_ACK ;
 int CMD_SET_MT32 ;
 int host_close (struct sscape_info*) ;
 int host_command2 (struct sscape_info*,int ,int) ;
 int host_open (struct sscape_info*) ;
 scalar_t__ host_read (struct sscape_info*) ;

__attribute__((used)) static void set_mt32(struct sscape_info *devc, int value)
{
 host_open(devc);
 host_command2(devc, CMD_SET_MT32, value ? 1 : 0);
 if (host_read(devc) != CMD_ACK)
 {

 }
 host_close(devc);
}
