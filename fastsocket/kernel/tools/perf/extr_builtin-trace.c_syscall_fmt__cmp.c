
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_fmt {int name; } ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int syscall_fmt__cmp(const void *name, const void *fmtp)
{
 const struct syscall_fmt *fmt = fmtp;
 return strcmp(name, fmt->name);
}
