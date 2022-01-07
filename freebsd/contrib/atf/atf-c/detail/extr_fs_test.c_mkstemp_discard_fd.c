
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_fs_mkstemp (int *,int*) ;
 int atf_is_error (int ) ;
 int close (int) ;

__attribute__((used)) static
atf_error_t
mkstemp_discard_fd(atf_fs_path_t *p)
{
    int fd;
    atf_error_t err = atf_fs_mkstemp(p, &fd);
    if (!atf_is_error(err))
        close(fd);
    return err;
}
