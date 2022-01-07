
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char const*) ;

__attribute__((used)) static inline void print_testname(const char *testname)
{
 printk("%33s:", testname);
}
