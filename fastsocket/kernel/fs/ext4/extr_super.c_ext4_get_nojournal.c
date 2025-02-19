
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * journal_info; } ;


 int BUG_ON (int) ;
 unsigned long EXT4_NOJOURNAL_MAX_REF_COUNT ;
 TYPE_1__* current ;

__attribute__((used)) static handle_t *ext4_get_nojournal(void)
{
 handle_t *handle = current->journal_info;
 unsigned long ref_cnt = (unsigned long)handle;

 BUG_ON(ref_cnt >= EXT4_NOJOURNAL_MAX_REF_COUNT);

 ref_cnt++;
 handle = (handle_t *)ref_cnt;

 current->journal_info = handle;
 return handle;
}
