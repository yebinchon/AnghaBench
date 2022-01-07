
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_type; } ;
typedef TYPE_1__ atf_fs_stat_t ;



int
atf_fs_stat_get_type(const atf_fs_stat_t *st)
{
    return st->m_type;
}
