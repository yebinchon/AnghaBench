
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_getpid ;
 int syscall (int ) ;

int getpid_(void) { return syscall(__NR_getpid); }
