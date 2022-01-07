
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int dummy; } ;



__attribute__((used)) static inline int
ftrace_ops_test(struct ftrace_ops *ops, unsigned long ip)
{
 return 1;
}
