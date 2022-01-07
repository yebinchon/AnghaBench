
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;


 int F_OK ;
 scalar_t__ access (int ,int ) ;
 int atf_fs_path_cstring (int const*) ;

__attribute__((used)) static
bool
exists(const atf_fs_path_t *p)
{
    return access(atf_fs_path_cstring(p), F_OK) == 0;
}
