
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dqlen; int dq; int qlen; int q; int dplen; int dp; int plen; int p; } ;
typedef TYPE_1__ br_rsa_private_key ;


 int EQ (int,int) ;
 int get_pubexp (int ,int ,int ,int ) ;

uint32_t
br_rsa_i15_compute_pubexp(const br_rsa_private_key *sk)
{




 uint32_t ep, eq;

 ep = get_pubexp(sk->p, sk->plen, sk->dp, sk->dplen);
 eq = get_pubexp(sk->q, sk->qlen, sk->dq, sk->dqlen);
 return ep & -EQ(ep, eq);
}
