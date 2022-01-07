
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int INV (int) ;
 int S_IRWXU ;
 int atf_fs_stat_dir_type ;
 scalar_t__ atf_is_error (int ) ;
 int check_umask (int ,int ) ;
 int copy_contents (int *,char**) ;
 int current_umask () ;
 int do_mkdtemp (char*) ;
 int free (char*) ;
 int invalid_umask_error (int *,int ,int ) ;
 int replace_contents (int *,char*) ;

atf_error_t
atf_fs_mkdtemp(atf_fs_path_t *p)
{
    atf_error_t err;
    char *buf;

    if (!check_umask(S_IRWXU, S_IRWXU)) {
        err = invalid_umask_error(p, atf_fs_stat_dir_type, current_umask());
        goto out;
    }

    err = copy_contents(p, &buf);
    if (atf_is_error(err))
        goto out;

    err = do_mkdtemp(buf);
    if (atf_is_error(err))
        goto out_buf;

    replace_contents(p, buf);

    INV(!atf_is_error(err));
out_buf:
    free(buf);
out:
    return err;
}
