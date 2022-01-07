
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int rose_destroy_socket (struct sock*) ;

__attribute__((used)) static void rose_destroy_timer(unsigned long data)
{
 rose_destroy_socket((struct sock *)data);
}
