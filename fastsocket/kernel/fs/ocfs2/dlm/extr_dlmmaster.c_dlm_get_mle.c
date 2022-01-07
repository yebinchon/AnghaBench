
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_master_list_entry {int mle_refs; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void dlm_get_mle(struct dlm_master_list_entry *mle)
{
 kref_get(&mle->mle_refs);
}
