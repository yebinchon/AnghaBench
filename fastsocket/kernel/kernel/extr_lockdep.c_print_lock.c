
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct held_lock {int acquire_ip; } ;


 int hlock_class (struct held_lock*) ;
 int print_ip_sym (int ) ;
 int print_lock_name (int ) ;
 int printk (char*) ;

__attribute__((used)) static void print_lock(struct held_lock *hlock)
{
 print_lock_name(hlock_class(hlock));
 printk(", at: ");
 print_ip_sym(hlock->acquire_ip);
}
