
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;


 int RE (int ) ;
 int atf_fs_exists (int *,int*) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,char const*) ;

__attribute__((used)) static
bool
exists(const char *p)
{
    bool b;
    atf_fs_path_t pp;

    RE(atf_fs_path_init_fmt(&pp, "%s", p));
    RE(atf_fs_exists(&pp, &b));
    atf_fs_path_fini(&pp);

    return b;
}
