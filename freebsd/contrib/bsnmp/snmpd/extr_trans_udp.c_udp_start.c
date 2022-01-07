
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int my_trans ;
 int trans_register (int *,int *) ;
 int udp_trans ;

__attribute__((used)) static int
udp_start(void)
{
 return (trans_register(&udp_trans, &my_trans));
}
