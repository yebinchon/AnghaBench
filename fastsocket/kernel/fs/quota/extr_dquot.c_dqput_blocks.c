
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int dqput_blocks(struct dquot *dquot)
{
 if (atomic_read(&dquot->dq_count) <= 1)
  return 1;
 return 0;
}
