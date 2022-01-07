
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
typedef int bdaddr_t ;
typedef int __le16 ;
struct TYPE_2__ {int lock; } ;


 struct sock* __l2cap_get_sock_by_psm (int,int ,int *) ;
 int bh_lock_sock (struct sock*) ;
 TYPE_1__ l2cap_sk_list ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static inline struct sock *l2cap_get_sock_by_psm(int state, __le16 psm, bdaddr_t *src)
{
 struct sock *s;
 read_lock(&l2cap_sk_list.lock);
 s = __l2cap_get_sock_by_psm(state, psm, src);
 if (s)
  bh_lock_sock(s);
 read_unlock(&l2cap_sk_list.lock);
 return s;
}
