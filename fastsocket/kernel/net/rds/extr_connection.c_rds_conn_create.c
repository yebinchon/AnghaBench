
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {int dummy; } ;
struct rds_connection {int dummy; } ;
typedef int gfp_t ;
typedef int __be32 ;


 struct rds_connection* __rds_conn_create (int ,int ,struct rds_transport*,int ,int ) ;

struct rds_connection *rds_conn_create(__be32 laddr, __be32 faddr,
           struct rds_transport *trans, gfp_t gfp)
{
 return __rds_conn_create(laddr, faddr, trans, gfp, 0);
}
