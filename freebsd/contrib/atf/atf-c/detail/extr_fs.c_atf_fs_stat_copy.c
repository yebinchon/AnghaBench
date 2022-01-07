
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_sb; int m_type; } ;
typedef TYPE_1__ atf_fs_stat_t ;



void
atf_fs_stat_copy(atf_fs_stat_t *dest, const atf_fs_stat_t *src)
{
    dest->m_type = src->m_type;
    dest->m_sb = src->m_sb;
}
