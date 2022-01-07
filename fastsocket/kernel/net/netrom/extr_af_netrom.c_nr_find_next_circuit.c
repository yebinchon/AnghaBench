
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int bh_unlock_sock (struct sock*) ;
 unsigned short circuit ;
 struct sock* nr_find_socket (unsigned char,unsigned char) ;

__attribute__((used)) static unsigned short nr_find_next_circuit(void)
{
 unsigned short id = circuit;
 unsigned char i, j;
 struct sock *sk;

 for (;;) {
  i = id / 256;
  j = id % 256;

  if (i != 0 && j != 0) {
   if ((sk=nr_find_socket(i, j)) == ((void*)0))
    break;
   bh_unlock_sock(sk);
  }

  id++;
 }

 return id;
}
