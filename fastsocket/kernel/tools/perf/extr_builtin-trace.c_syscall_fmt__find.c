
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_fmt {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct syscall_fmt* bsearch (char const*,int ,int const,int,int ) ;
 int syscall_fmt__cmp ;
 int syscall_fmts ;

__attribute__((used)) static struct syscall_fmt *syscall_fmt__find(const char *name)
{
 const int nmemb = ARRAY_SIZE(syscall_fmts);
 return bsearch(name, syscall_fmts, nmemb, sizeof(struct syscall_fmt), syscall_fmt__cmp);
}
