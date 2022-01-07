
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int audit_cmd_mutex ;
 int audit_receive_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void audit_receive(struct sk_buff *skb)
{
 mutex_lock(&audit_cmd_mutex);
 audit_receive_skb(skb);
 mutex_unlock(&audit_cmd_mutex);
}
