
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct rds_message {int m_used_sgs; int m_total_sgs; } ;


 int WARN_ON (int) ;
 int sg_init_table (struct scatterlist*,int) ;

struct scatterlist *rds_message_alloc_sgs(struct rds_message *rm, int nents)
{
 struct scatterlist *sg_first = (struct scatterlist *) &rm[1];
 struct scatterlist *sg_ret;

 WARN_ON(rm->m_used_sgs + nents > rm->m_total_sgs);
 WARN_ON(!nents);

 if (rm->m_used_sgs + nents > rm->m_total_sgs)
  return ((void*)0);

 sg_ret = &sg_first[rm->m_used_sgs];
 sg_init_table(sg_ret, nents);
 rm->m_used_sgs += nents;

 return sg_ret;
}
