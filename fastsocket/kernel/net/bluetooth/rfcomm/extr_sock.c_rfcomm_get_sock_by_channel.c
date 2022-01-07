
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
typedef int bdaddr_t ;
struct TYPE_2__ {int lock; } ;


 struct sock* __rfcomm_get_sock_by_channel (int,int ,int *) ;
 int bh_lock_sock (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 TYPE_1__ rfcomm_sk_list ;

__attribute__((used)) static inline struct sock *rfcomm_get_sock_by_channel(int state, u8 channel, bdaddr_t *src)
{
 struct sock *s;
 read_lock(&rfcomm_sk_list.lock);
 s = __rfcomm_get_sock_by_channel(state, channel, src);
 if (s) bh_lock_sock(s);
 read_unlock(&rfcomm_sk_list.lock);
 return s;
}
