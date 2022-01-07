
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_smack {char* smk_in; char* smk_out; char* smk_packet; } ;
struct sock {struct socket_smack* sk_security; } ;
typedef int gfp_t ;


 int ENOMEM ;
 char* current_security () ;
 struct socket_smack* kzalloc (int,int ) ;

__attribute__((used)) static int smack_sk_alloc_security(struct sock *sk, int family, gfp_t gfp_flags)
{
 char *csp = current_security();
 struct socket_smack *ssp;

 ssp = kzalloc(sizeof(struct socket_smack), gfp_flags);
 if (ssp == ((void*)0))
  return -ENOMEM;

 ssp->smk_in = csp;
 ssp->smk_out = csp;
 ssp->smk_packet[0] = '\0';

 sk->sk_security = ssp;

 return 0;
}
