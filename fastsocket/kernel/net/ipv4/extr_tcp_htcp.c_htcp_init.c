
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct htcp {int pkts_acked; int last_cong; int beta; int alpha; } ;


 int ALPHA_BASE ;
 int BETA_MIN ;
 struct htcp* inet_csk_ca (struct sock*) ;
 int jiffies ;
 int memset (struct htcp*,int ,int) ;

__attribute__((used)) static void htcp_init(struct sock *sk)
{
 struct htcp *ca = inet_csk_ca(sk);

 memset(ca, 0, sizeof(struct htcp));
 ca->alpha = ALPHA_BASE;
 ca->beta = BETA_MIN;
 ca->pkts_acked = 1;
 ca->last_cong = jiffies;
}
