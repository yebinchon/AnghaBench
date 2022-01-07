
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int sk; int irsacore; } ;
typedef TYPE_1__ br_ssl_server_policy_rsa_context ;
typedef int br_ssl_server_policy_class ;


 int br_rsa_ssl_decrypt (int ,int ,unsigned char*,size_t) ;

__attribute__((used)) static uint32_t
sr_do_keyx(const br_ssl_server_policy_class **pctx,
 unsigned char *data, size_t *len)
{
 br_ssl_server_policy_rsa_context *pc;

 pc = (br_ssl_server_policy_rsa_context *)pctx;
 return br_rsa_ssl_decrypt(pc->irsacore, pc->sk, data, *len);
}
