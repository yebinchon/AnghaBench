
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u64 ;
struct xt_cluster_match_info {int total_nodes; } ;
struct nf_conn {int dummy; } ;




 int WARN_ON (int) ;
 int nf_ct_l3num (struct nf_conn const*) ;
 int nf_ct_orig_ipv4_src (struct nf_conn const*) ;
 int nf_ct_orig_ipv6_src (struct nf_conn const*) ;
 int xt_cluster_hash_ipv4 (int ,struct xt_cluster_match_info const*) ;
 int xt_cluster_hash_ipv6 (int ,struct xt_cluster_match_info const*) ;

__attribute__((used)) static inline u_int32_t
xt_cluster_hash(const struct nf_conn *ct,
  const struct xt_cluster_match_info *info)
{
 u_int32_t hash = 0;

 switch(nf_ct_l3num(ct)) {
 case 129:
  hash = xt_cluster_hash_ipv4(nf_ct_orig_ipv4_src(ct), info);
  break;
 case 128:
  hash = xt_cluster_hash_ipv6(nf_ct_orig_ipv6_src(ct), info);
  break;
 default:
  WARN_ON(1);
  break;
 }
 return (((u64)hash * info->total_nodes) >> 32);
}
