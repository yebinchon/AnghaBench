
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_process_stream_t ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_process_stream_init_inherit (int *) ;
 int atf_process_stream_init_redirect_path (int *,int const*) ;

__attribute__((used)) static
atf_error_t
init_sb(const atf_fs_path_t *path, atf_process_stream_t *sb)
{
    atf_error_t err;

    if (path == ((void*)0))
        err = atf_process_stream_init_inherit(sb);
    else
        err = atf_process_stream_init_redirect_path(sb, path);

    return err;
}
