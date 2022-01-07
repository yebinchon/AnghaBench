
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; int st_gid; } ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int EACCES ;
 int PRE (int) ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int atf_fs_access_f ;
 int atf_fs_access_r ;
 int atf_fs_access_w ;
 int atf_fs_access_x ;
 int atf_fs_path_cstring (int const*) ;
 int atf_libc_error (int ,char*,...) ;
 int atf_no_error () ;
 scalar_t__ atf_user_euid () ;
 scalar_t__ atf_user_is_member_of_group (int ) ;
 scalar_t__ atf_user_is_root () ;
 int errno ;
 int lstat (int ,struct stat*) ;

atf_error_t
atf_fs_eaccess(const atf_fs_path_t *p, int mode)
{
    atf_error_t err;
    struct stat st;
    bool ok;

    PRE(mode & atf_fs_access_f || mode & atf_fs_access_r ||
        mode & atf_fs_access_w || mode & atf_fs_access_x);

    if (lstat(atf_fs_path_cstring(p), &st) == -1) {
        err = atf_libc_error(errno, "Cannot get information from file %s",
                             atf_fs_path_cstring(p));
        goto out;
    }

    err = atf_no_error();



    if (mode & atf_fs_access_f)
        goto out;

    ok = 0;
    if (atf_user_is_root()) {
        if (!ok && !(mode & atf_fs_access_x)) {

            ok = 1;
        }

        if (!ok && (st.st_mode & (S_IXUSR | S_IXGRP | S_IXOTH))) {


            ok = 1;
        }
    } else {
        if (!ok && (atf_user_euid() == st.st_uid)) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IRUSR)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWUSR)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXUSR));
        }
        if (!ok && atf_user_is_member_of_group(st.st_gid)) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IRGRP)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWGRP)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXGRP));
        }
        if (!ok && ((atf_user_euid() != st.st_uid) &&
                    !atf_user_is_member_of_group(st.st_gid))) {
            ok = ((mode & atf_fs_access_r) && (st.st_mode & S_IROTH)) ||
                 ((mode & atf_fs_access_w) && (st.st_mode & S_IWOTH)) ||
                 ((mode & atf_fs_access_x) && (st.st_mode & S_IXOTH));
        }
    }

    if (!ok)
        err = atf_libc_error(EACCES, "Access check failed");

out:
    return err;
}
