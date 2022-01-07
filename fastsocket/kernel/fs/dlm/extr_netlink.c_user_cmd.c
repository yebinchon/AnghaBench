
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_pid; } ;


 int listener_nlpid ;
 int printk (char*,int ) ;

__attribute__((used)) static int user_cmd(struct sk_buff *skb, struct genl_info *info)
{
 listener_nlpid = info->snd_pid;
 printk("user_cmd nlpid %u\n", listener_nlpid);
 return 0;
}
