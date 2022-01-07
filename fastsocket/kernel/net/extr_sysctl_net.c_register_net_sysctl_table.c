
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsproxy {struct net* net_ns; } ;
struct net {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_path {int dummy; } ;
struct TYPE_2__ {struct nsproxy* nsproxy; } ;


 struct ctl_table_header* __register_sysctl_paths (int *,struct nsproxy*,struct ctl_path const*,struct ctl_table*) ;
 TYPE_1__* current ;
 int net_sysctl_root ;

struct ctl_table_header *register_net_sysctl_table(struct net *net,
 const struct ctl_path *path, struct ctl_table *table)
{
 struct nsproxy namespaces;
 namespaces = *current->nsproxy;
 namespaces.net_ns = net;
 return __register_sysctl_paths(&net_sysctl_root,
     &namespaces, path, table);
}
