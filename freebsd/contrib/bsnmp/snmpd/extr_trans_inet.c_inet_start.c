
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_trans ;
 int my_trans ;
 int trans_register (int *,int *) ;

__attribute__((used)) static int
inet_start(void)
{
 return (trans_register(&inet_trans, &my_trans));
}
