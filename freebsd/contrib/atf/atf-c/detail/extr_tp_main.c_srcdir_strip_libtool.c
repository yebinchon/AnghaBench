
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int INV (int) ;
 int atf_fs_path_branch_path (int *,int *) ;
 int atf_fs_path_fini (int *) ;
 scalar_t__ atf_is_error (int ) ;

__attribute__((used)) static
atf_error_t
srcdir_strip_libtool(atf_fs_path_t *srcdir)
{
    atf_error_t err;
    atf_fs_path_t parent;

    err = atf_fs_path_branch_path(srcdir, &parent);
    if (atf_is_error(err))
        goto out;

    atf_fs_path_fini(srcdir);
    *srcdir = parent;

    INV(!atf_is_error(err));
out:
    return err;
}
