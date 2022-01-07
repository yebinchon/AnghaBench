
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int F_OK ;
 int access (char const*,int ) ;
 int atf_tc_fail (char*,char const*,int ) ;
 scalar_t__ errno ;
 int strerror (scalar_t__) ;

bool
atf_utils_file_exists(const char *path)
{
    const int ret = access(path, F_OK);
    if (ret == -1) {
        if (errno != ENOENT)
            atf_tc_fail("Failed to check the existence of %s: %s", path,
                        strerror(errno));
        else
            return 0;
    } else
        return 1;
}
