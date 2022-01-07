
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int MAXPATHLEN ;
 int atf_fs_path_init_fmt (int *,char*,char*) ;
 int atf_libc_error (int ,char*) ;
 int errno ;
 int free (char*) ;
 char* getcwd (int *,int ) ;

atf_error_t
atf_fs_getcwd(atf_fs_path_t *p)
{
    atf_error_t err;
    char *cwd;




    cwd = getcwd(((void*)0), MAXPATHLEN);

    if (cwd == ((void*)0)) {
        err = atf_libc_error(errno, "Cannot determine current directory");
        goto out;
    }

    err = atf_fs_path_init_fmt(p, "%s", cwd);
    free(cwd);

out:
    return err;
}
