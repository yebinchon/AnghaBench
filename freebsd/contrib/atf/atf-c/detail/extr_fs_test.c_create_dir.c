
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atf_tc_fail (char*,char const*) ;
 int mkdir (char const*,int) ;

__attribute__((used)) static
void
create_dir(const char *p, int mode)
{
    int ret;

    ret = mkdir(p, mode);
    if (ret == -1)
        atf_tc_fail("Could not create helper directory %s", p);
}
