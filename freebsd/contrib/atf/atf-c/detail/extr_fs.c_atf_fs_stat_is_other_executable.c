
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_mode; } ;
struct TYPE_5__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ atf_fs_stat_t ;


 int S_IXOTH ;

bool
atf_fs_stat_is_other_executable(const atf_fs_stat_t *st)
{
    return st->m_sb.st_mode & S_IXOTH;
}
