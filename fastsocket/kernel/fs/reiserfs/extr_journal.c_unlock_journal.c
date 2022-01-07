
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int j_mutex; } ;


 TYPE_1__* SB_JOURNAL (struct super_block*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void unlock_journal(struct super_block *sb)
{
 mutex_unlock(&SB_JOURNAL(sb)->j_mutex);
}
