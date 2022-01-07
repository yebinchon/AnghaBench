
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFSEXP_SECINFO_FLAGS ;

__attribute__((used)) static bool secinfo_flags_equal(int f, int g)
{
 f &= NFSEXP_SECINFO_FLAGS;
 g &= NFSEXP_SECINFO_FLAGS;
 return f == g;
}
