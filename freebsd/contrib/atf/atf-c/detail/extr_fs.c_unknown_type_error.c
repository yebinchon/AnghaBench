
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* m_path; int m_type; } ;
typedef TYPE_1__ unknown_type_error_data_t ;
typedef int data ;
typedef int atf_error_t ;


 int atf_error_new (char*,TYPE_1__*,int,int ) ;
 int unknown_type_format ;

__attribute__((used)) static
atf_error_t
unknown_type_error(const char *path, int type)
{
    atf_error_t err;
    unknown_type_error_data_t data;

    data.m_path = path;
    data.m_type = type;

    err = atf_error_new("unknown_type", &data, sizeof(data),
                        unknown_type_format);

    return err;
}
