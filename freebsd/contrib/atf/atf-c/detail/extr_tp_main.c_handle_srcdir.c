
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int m_config; int m_srcdir; } ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int atf_dynstr_fini (int *) ;
 int atf_equal_dynstr_cstring (int *,char*) ;
 int atf_fs_exists (int *,int*) ;
 int atf_fs_path_append_fmt (int *,char*,int ) ;
 int atf_fs_path_copy (int *,int *) ;
 int atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_is_absolute (int *) ;
 int atf_fs_path_leaf_name (int *,int *) ;
 int atf_fs_path_to_absolute (int *,int *) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_map_insert (int *,char*,int ,int) ;
 int progname ;
 int srcdir_strip_libtool (int *) ;
 int strdup (int ) ;
 int user_error (char*,int ) ;

__attribute__((used)) static
atf_error_t
handle_srcdir(struct params *p)
{
    atf_error_t err;
    atf_dynstr_t leafname;
    atf_fs_path_t exe, srcdir;
    bool b;

    err = atf_fs_path_copy(&srcdir, &p->m_srcdir);
    if (atf_is_error(err))
        goto out;

    if (!atf_fs_path_is_absolute(&srcdir)) {
        atf_fs_path_t srcdirabs;

        err = atf_fs_path_to_absolute(&srcdir, &srcdirabs);
        if (atf_is_error(err))
            goto out_srcdir;

        atf_fs_path_fini(&srcdir);
        srcdir = srcdirabs;
    }

    err = atf_fs_path_leaf_name(&srcdir, &leafname);
    if (atf_is_error(err))
        goto out_srcdir;
    else {
        const bool libs = atf_equal_dynstr_cstring(&leafname, ".libs");
        atf_dynstr_fini(&leafname);

        if (libs) {
            err = srcdir_strip_libtool(&srcdir);
            if (atf_is_error(err))
                goto out;
        }
    }

    err = atf_fs_path_copy(&exe, &srcdir);
    if (atf_is_error(err))
        goto out_srcdir;

    err = atf_fs_path_append_fmt(&exe, "%s", progname);
    if (atf_is_error(err))
        goto out_exe;

    err = atf_fs_exists(&exe, &b);
    if (!atf_is_error(err)) {
        if (b) {
            err = atf_map_insert(&p->m_config, "srcdir",
                                 strdup(atf_fs_path_cstring(&srcdir)), 1);
        } else {
            err = user_error("Cannot find the test program in the source "
                             "directory `%s'", atf_fs_path_cstring(&srcdir));
        }
    }

out_exe:
    atf_fs_path_fini(&exe);
out_srcdir:
    atf_fs_path_fini(&srcdir);
out:
    return err;
}
