
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int dummy; } ;


 int rds_rs_to_sk (struct rds_sock*) ;
 int sock_put (int ) ;

void rds_sock_put(struct rds_sock *rs)
{
 sock_put(rds_rs_to_sk(rs));
}
