
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {long long budg_idx_growth; long long budg_data_growth; long long budg_dd_growth; int space_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static long long get_liability(struct ubifs_info *c)
{
 long long liab;

 spin_lock(&c->space_lock);
 liab = c->budg_idx_growth + c->budg_data_growth + c->budg_dd_growth;
 spin_unlock(&c->space_lock);
 return liab;
}
