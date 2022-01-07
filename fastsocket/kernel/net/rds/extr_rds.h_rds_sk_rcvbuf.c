
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_sock {int dummy; } ;
struct TYPE_2__ {int sk_rcvbuf; } ;


 TYPE_1__* rds_rs_to_sk (struct rds_sock*) ;

__attribute__((used)) static inline int rds_sk_rcvbuf(struct rds_sock *rs)
{
 return rds_rs_to_sk(rs)->sk_rcvbuf / 2;
}
