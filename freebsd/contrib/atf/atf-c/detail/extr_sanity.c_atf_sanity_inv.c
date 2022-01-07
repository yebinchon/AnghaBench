
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail (char*,char const*,int,char const*) ;

void
atf_sanity_inv(const char *file, int line, const char *cond)
{
    fail("Invariant check failed at %s:%d: %s", file, line, cond);
}
