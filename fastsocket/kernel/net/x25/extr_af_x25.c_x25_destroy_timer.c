
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int x25_destroy_socket_from_timer (struct sock*) ;

__attribute__((used)) static void x25_destroy_timer(unsigned long data)
{
 x25_destroy_socket_from_timer((struct sock *)data);
}
