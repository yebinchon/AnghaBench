
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_pid_ns (void*) ;

__attribute__((used)) static void pidns_put(void *ns)
{
 put_pid_ns(ns);
}
