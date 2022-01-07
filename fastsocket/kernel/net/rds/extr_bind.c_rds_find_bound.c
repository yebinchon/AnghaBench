
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int SOCK_DEAD ;
 int ntohs (int ) ;
 struct rds_sock* rds_bind_lookup (int ,int ,int *) ;
 int rds_rs_to_sk (struct rds_sock*) ;
 int rds_sock_addref (struct rds_sock*) ;
 int rdsdebug (char*,struct rds_sock*,int *,int ) ;
 int sock_flag (int ,int ) ;

struct rds_sock *rds_find_bound(__be32 addr, __be16 port)
{
 struct rds_sock *rs;

 rs = rds_bind_lookup(addr, port, ((void*)0));

 if (rs && !sock_flag(rds_rs_to_sk(rs), SOCK_DEAD))
  rds_sock_addref(rs);
 else
  rs = ((void*)0);

 rdsdebug("returning rs %p for %pI4:%u\n", rs, &addr,
  ntohs(port));
 return rs;
}
