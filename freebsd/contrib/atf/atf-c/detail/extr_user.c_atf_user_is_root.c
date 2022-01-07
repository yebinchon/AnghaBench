
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ geteuid () ;

bool
atf_user_is_root(void)
{
    return geteuid() == 0;
}
