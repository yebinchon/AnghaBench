
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_3__ {int m_type; char* m_path; int m_umask; } ;
typedef TYPE_1__ invalid_umask_error_data_t ;
typedef int data ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 int atf_error_new (char*,TYPE_1__*,int,int ) ;
 int atf_fs_path_cstring (int const*) ;
 int invalid_umask_format ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static
atf_error_t
invalid_umask_error(const atf_fs_path_t *path, const int type,
                    const mode_t failing_mask)
{
    atf_error_t err;
    invalid_umask_error_data_t data;

    data.m_type = type;

    strncpy(data.m_path, atf_fs_path_cstring(path), sizeof(data.m_path));
    data.m_path[sizeof(data.m_path) - 1] = '\0';

    data.m_umask = failing_mask;

    err = atf_error_new("invalid_umask", &data, sizeof(data),
                        invalid_umask_format);

    return err;
}
