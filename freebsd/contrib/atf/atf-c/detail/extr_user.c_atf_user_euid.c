
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int geteuid () ;

uid_t
atf_user_euid(void)
{
    return geteuid();
}
