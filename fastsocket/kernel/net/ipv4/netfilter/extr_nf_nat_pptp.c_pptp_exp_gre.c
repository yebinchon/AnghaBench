
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct nf_nat_pptp {int pac_call_id; int pns_call_id; } ;
struct nf_ct_pptp_master {int pns_call_id; int pac_call_id; } ;
struct TYPE_25__ {int key; } ;
struct TYPE_26__ {TYPE_8__ gre; } ;
struct TYPE_14__ {TYPE_9__ u; } ;
struct TYPE_22__ {int key; } ;
struct TYPE_23__ {TYPE_5__ gre; } ;
struct TYPE_24__ {TYPE_6__ u; } ;
struct TYPE_15__ {TYPE_10__ dst; TYPE_7__ src; } ;
struct TYPE_20__ {int key; } ;
struct TYPE_21__ {TYPE_3__ gre; } ;
struct nf_conntrack_expect {int dir; TYPE_11__ tuple; TYPE_4__ saved_proto; struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;
struct TYPE_19__ {struct nf_nat_pptp nat_pptp_info; } ;
struct TYPE_18__ {struct nf_ct_pptp_master ct_pptp_info; } ;
struct TYPE_17__ {TYPE_1__ help; } ;
struct TYPE_16__ {TYPE_2__ help; } ;


 int IP_CT_DIR_ORIGINAL ;
 int IP_CT_DIR_REPLY ;
 TYPE_13__* nfct_help (struct nf_conn const*) ;
 TYPE_12__* nfct_nat (struct nf_conn const*) ;

__attribute__((used)) static void
pptp_exp_gre(struct nf_conntrack_expect *expect_orig,
      struct nf_conntrack_expect *expect_reply)
{
 const struct nf_conn *ct = expect_orig->master;
 struct nf_ct_pptp_master *ct_pptp_info;
 struct nf_nat_pptp *nat_pptp_info;

 ct_pptp_info = &nfct_help(ct)->help.ct_pptp_info;
 nat_pptp_info = &nfct_nat(ct)->help.nat_pptp_info;


 nat_pptp_info->pac_call_id = ct_pptp_info->pac_call_id;


 expect_orig->saved_proto.gre.key = ct_pptp_info->pns_call_id;
 expect_orig->tuple.src.u.gre.key = nat_pptp_info->pns_call_id;
 expect_orig->tuple.dst.u.gre.key = ct_pptp_info->pac_call_id;
 expect_orig->dir = IP_CT_DIR_ORIGINAL;


 expect_reply->saved_proto.gre.key = nat_pptp_info->pns_call_id;
 expect_reply->tuple.src.u.gre.key = nat_pptp_info->pac_call_id;
 expect_reply->tuple.dst.u.gre.key = ct_pptp_info->pns_call_id;
 expect_reply->dir = IP_CT_DIR_REPLY;
}
