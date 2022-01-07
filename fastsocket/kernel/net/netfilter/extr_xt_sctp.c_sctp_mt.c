
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xt_sctp_info {scalar_t__* spts; scalar_t__* dpts; int invflags; int flags; } ;
struct xt_match_param {scalar_t__ fragoff; int* hotdrop; scalar_t__ thoff; struct xt_sctp_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int dest; int source; } ;
typedef TYPE_1__ sctp_sctphdr_t ;
typedef int _sh ;


 scalar_t__ SCCHECK (int,int ,int ,int ) ;
 int XT_SCTP_CHUNK_TYPES ;
 int XT_SCTP_DEST_PORTS ;
 int XT_SCTP_SRC_PORTS ;
 int duprintf (char*,...) ;
 int match_packet (struct sk_buff const*,scalar_t__,struct xt_sctp_info const*,int*) ;
 scalar_t__ ntohs (int ) ;
 TYPE_1__* skb_header_pointer (struct sk_buff const*,scalar_t__,int,TYPE_1__*) ;

__attribute__((used)) static bool
sctp_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_sctp_info *info = par->matchinfo;
 const sctp_sctphdr_t *sh;
 sctp_sctphdr_t _sh;

 if (par->fragoff != 0) {
  duprintf("Dropping non-first fragment.. FIXME\n");
  return 0;
 }

 sh = skb_header_pointer(skb, par->thoff, sizeof(_sh), &_sh);
 if (sh == ((void*)0)) {
  duprintf("Dropping evil TCP offset=0 tinygram.\n");
  *par->hotdrop = 1;
  return 0;
 }
 duprintf("spt: %d\tdpt: %d\n", ntohs(sh->source), ntohs(sh->dest));

 return SCCHECK(ntohs(sh->source) >= info->spts[0]
   && ntohs(sh->source) <= info->spts[1],
   XT_SCTP_SRC_PORTS, info->flags, info->invflags)
  && SCCHECK(ntohs(sh->dest) >= info->dpts[0]
   && ntohs(sh->dest) <= info->dpts[1],
   XT_SCTP_DEST_PORTS, info->flags, info->invflags)
  && SCCHECK(match_packet(skb, par->thoff + sizeof(sctp_sctphdr_t),
     info, par->hotdrop),
      XT_SCTP_CHUNK_TYPES, info->flags, info->invflags);
}
