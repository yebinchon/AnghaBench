
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int dummy; } ;
struct ib_sge {int dummy; } ;



__attribute__((used)) static inline struct ib_sge *
rds_iw_data_sge(struct rds_iw_connection *ic, struct ib_sge *sge)
{
 return &sge[1];
}
