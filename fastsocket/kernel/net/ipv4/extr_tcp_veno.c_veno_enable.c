
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veno {int doing_veno_now; int minrtt; } ;
struct sock {int dummy; } ;


 struct veno* inet_csk_ca (struct sock*) ;

__attribute__((used)) static inline void veno_enable(struct sock *sk)
{
 struct veno *veno = inet_csk_ca(sk);


 veno->doing_veno_now = 1;

 veno->minrtt = 0x7fffffff;
}
