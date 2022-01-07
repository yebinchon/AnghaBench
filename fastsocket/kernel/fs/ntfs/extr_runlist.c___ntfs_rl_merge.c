
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
typedef TYPE_1__ runlist_element ;



__attribute__((used)) static inline void __ntfs_rl_merge(runlist_element *dst, runlist_element *src)
{
 dst->length += src->length;
}
