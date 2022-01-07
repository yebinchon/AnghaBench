
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;

__attribute__((used)) static int
errno_fail_stub(const int raised_errno)
{
    errno = raised_errno;
    return -1;
}
