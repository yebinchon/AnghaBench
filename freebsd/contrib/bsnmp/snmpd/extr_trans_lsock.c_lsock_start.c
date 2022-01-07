
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lsock_trans ;
 int my_trans ;
 int trans_register (int *,int *) ;

__attribute__((used)) static int
lsock_start(void)
{
 return (trans_register(&lsock_trans, &my_trans));
}
