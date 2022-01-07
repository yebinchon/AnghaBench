
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_hash_proc_ops ;
 int register_pernet_subsys (int *) ;

__attribute__((used)) static int inet_hash_proc_init(void)
{
 return register_pernet_subsys(&inet_hash_proc_ops);
}
