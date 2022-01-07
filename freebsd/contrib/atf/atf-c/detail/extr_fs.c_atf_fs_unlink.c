
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 char* atf_fs_path_cstring (int const*) ;
 int atf_libc_error (int ,char*,char const*) ;
 int atf_no_error () ;
 int errno ;
 scalar_t__ unlink (char const*) ;

atf_error_t
atf_fs_unlink(const atf_fs_path_t *p)
{
    atf_error_t err;
    const char *path;

    path = atf_fs_path_cstring(p);

    if (unlink(path) != 0)
        err = atf_libc_error(errno, "Cannot unlink file: '%s'", path);
    else
        err = atf_no_error();

    return err;
}
