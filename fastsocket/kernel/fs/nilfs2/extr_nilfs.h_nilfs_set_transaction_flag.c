
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_transaction_info {unsigned int ti_flags; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 TYPE_1__* current ;

__attribute__((used)) static inline void nilfs_set_transaction_flag(unsigned int flag)
{
 struct nilfs_transaction_info *ti = current->journal_info;

 ti->ti_flags |= flag;
}
