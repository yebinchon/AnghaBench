
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct net {int dummy; } ;
typedef int buf ;


 int FORMAT_MATCHES ;
 int FORMAT_TABLES ;
 int FORMAT_TARGETS ;
 int XT_FUNCTION_MAXNAMELEN ;
 int proc_net_remove (struct net*,char*) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 int * xt_prefix ;

void xt_proto_fini(struct net *net, u_int8_t af)
{
}
