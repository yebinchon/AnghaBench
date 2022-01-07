
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* iecdsa ) (int ,int const*,unsigned char*,int ,unsigned char*) ;int sk; int iec; int mhash; } ;
typedef TYPE_1__ br_ssl_server_policy_ec_context ;
typedef int br_ssl_server_policy_class ;
typedef int br_hash_class ;


 int * br_multihash_getimpl (int ,unsigned int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 size_t stub1 (int ,int const*,unsigned char*,int ,unsigned char*) ;

__attribute__((used)) static size_t
se_do_sign(const br_ssl_server_policy_class **pctx,
 unsigned algo_id, unsigned char *data, size_t hv_len, size_t len)
{
 br_ssl_server_policy_ec_context *pc;
 unsigned char hv[64];
 const br_hash_class *hc;

 algo_id &= 0xFF;
 pc = (br_ssl_server_policy_ec_context *)pctx;
 hc = br_multihash_getimpl(pc->mhash, algo_id);
 if (hc == ((void*)0)) {
  return 0;
 }
 memcpy(hv, data, hv_len);
 if (len < 139) {
  return 0;
 }
 return pc->iecdsa(pc->iec, hc, hv, pc->sk, data);
}
