
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
struct TYPE_4__ {int m_type; TYPE_2__ m_sb; } ;
typedef TYPE_1__ atf_fs_stat_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;







 int S_IFMT ;



 char* atf_fs_path_cstring (int const*) ;
 int atf_fs_stat_blk_type ;
 int atf_fs_stat_chr_type ;
 int atf_fs_stat_dir_type ;
 int atf_fs_stat_fifo_type ;
 int atf_fs_stat_lnk_type ;
 int atf_fs_stat_reg_type ;
 int atf_fs_stat_sock_type ;
 int atf_fs_stat_wht_type ;
 int atf_libc_error (int ,char*,char const*) ;
 int atf_no_error () ;
 int errno ;
 int lstat (char const*,TYPE_2__*) ;
 int unknown_type_error (char const*,int) ;

atf_error_t
atf_fs_stat_init(atf_fs_stat_t *st, const atf_fs_path_t *p)
{
    atf_error_t err;
    const char *pstr = atf_fs_path_cstring(p);

    if (lstat(pstr, &st->m_sb) == -1) {
        err = atf_libc_error(errno, "Cannot get information of %s; "
                             "lstat(2) failed", pstr);
    } else {
        int type = st->m_sb.st_mode & S_IFMT;
        err = atf_no_error();
        switch (type) {
            case 135: st->m_type = atf_fs_stat_blk_type; break;
            case 134: st->m_type = atf_fs_stat_chr_type; break;
            case 133: st->m_type = atf_fs_stat_dir_type; break;
            case 132: st->m_type = atf_fs_stat_fifo_type; break;
            case 131: st->m_type = atf_fs_stat_lnk_type; break;
            case 130: st->m_type = atf_fs_stat_reg_type; break;
            case 129: st->m_type = atf_fs_stat_sock_type; break;

            case 128: st->m_type = atf_fs_stat_wht_type; break;

            default:
                err = unknown_type_error(pstr, type);
        }
    }

    return err;
}
