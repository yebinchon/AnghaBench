
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOTEMPTY ;
 int atf_fs_path_cstring (int const*) ;
 int atf_libc_error (scalar_t__,char*) ;
 int atf_no_error () ;
 scalar_t__ errno ;
 scalar_t__ rmdir (int ) ;

atf_error_t
atf_fs_rmdir(const atf_fs_path_t *p)
{
    atf_error_t err;

    if (rmdir(atf_fs_path_cstring(p))) {
        if (errno == EEXIST) {




            errno = ENOTEMPTY;
        }
        err = atf_libc_error(errno, "Cannot remove directory");
    } else
        err = atf_no_error();

    return err;
}
