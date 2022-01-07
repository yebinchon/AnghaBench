
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
typedef int __be32 ;


 unsigned long RDS_CONNECTION_HASH_MASK ;
 int be32_to_cpu (int ) ;
 unsigned long inet_ehashfn (int *,int ,int ,int ,int ) ;
 struct hlist_head* rds_conn_hash ;

__attribute__((used)) static struct hlist_head *rds_conn_bucket(__be32 laddr, __be32 faddr)
{

 unsigned long hash = inet_ehashfn(((void*)0),
       be32_to_cpu(laddr), 0,
       be32_to_cpu(faddr), 0);
 return &rds_conn_hash[hash & RDS_CONNECTION_HASH_MASK];
}
