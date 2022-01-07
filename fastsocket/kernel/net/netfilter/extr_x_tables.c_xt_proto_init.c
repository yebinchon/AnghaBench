
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct proc_dir_entry {int dummy; } ;
struct net {int proc_net; } ;
typedef int buf ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int FORMAT_MATCHES ;
 int FORMAT_TABLES ;
 int FORMAT_TARGETS ;
 int XT_FUNCTION_MAXNAMELEN ;
 struct proc_dir_entry* proc_create_data (char*,int,int ,int *,void*) ;
 int proc_net_remove (struct net*,char*) ;
 int strlcat (char*,int ,int) ;
 int strlcpy (char*,int ,int) ;
 int xt_match_ops ;
 int * xt_prefix ;
 int xt_table_ops ;
 int xt_target_ops ;

int xt_proto_init(struct net *net, u_int8_t af)
{





 if (af >= ARRAY_SIZE(xt_prefix))
  return -EINVAL;
 return 0;
}
