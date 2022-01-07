
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nf_conn** keymap; } ;
struct TYPE_4__ {TYPE_1__ ct_pptp_info; } ;
struct nf_conn_help {TYPE_2__ help; } ;
struct nf_conn {int list; } ;
struct netns_proto_gre {int keymap_lock; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;


 int IP_CT_DIR_MAX ;
 int IP_CT_DIR_ORIGINAL ;
 int kfree (struct nf_conn*) ;
 int list_del (int *) ;
 struct netns_proto_gre* net_generic (struct net*,int ) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int pr_debug (char*,struct nf_conn*) ;
 int proto_gre_net_id ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void nf_ct_gre_keymap_destroy(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 struct netns_proto_gre *net_gre = net_generic(net, proto_gre_net_id);
 struct nf_conn_help *help = nfct_help(ct);
 enum ip_conntrack_dir dir;

 pr_debug("entering for ct %p\n", ct);

 write_lock_bh(&net_gre->keymap_lock);
 for (dir = IP_CT_DIR_ORIGINAL; dir < IP_CT_DIR_MAX; dir++) {
  if (help->help.ct_pptp_info.keymap[dir]) {
   pr_debug("removing %p from list\n",
     help->help.ct_pptp_info.keymap[dir]);
   list_del(&help->help.ct_pptp_info.keymap[dir]->list);
   kfree(help->help.ct_pptp_info.keymap[dir]);
   help->help.ct_pptp_info.keymap[dir] = ((void*)0);
  }
 }
 write_unlock_bh(&net_gre->keymap_lock);
}
