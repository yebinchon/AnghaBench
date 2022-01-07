
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;


 int ATF_REQUIRE (int) ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int RE (int ) ;
 int atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,char const*) ;
 int open (int ,int,int) ;

__attribute__((used)) static
void
create_ctl_file(const char *name)
{
    atf_fs_path_t p;

    RE(atf_fs_path_init_fmt(&p, "%s", name));
    ATF_REQUIRE(open(atf_fs_path_cstring(&p),
                   O_CREAT | O_WRONLY | O_TRUNC, 0644) != -1);
    atf_fs_path_fini(&p);
}
