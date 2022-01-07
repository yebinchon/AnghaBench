
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_sctp_info {int flags; int invflags; int chunk_match_type; } ;
struct xt_mtchk_param {struct xt_sctp_info* matchinfo; } ;


 int SCTP_CHUNK_MATCH_ALL ;
 int SCTP_CHUNK_MATCH_ANY ;
 int SCTP_CHUNK_MATCH_ONLY ;
 int XT_SCTP_CHUNK_TYPES ;
 int XT_SCTP_VALID_FLAGS ;

__attribute__((used)) static bool sctp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_sctp_info *info = par->matchinfo;

 return !(info->flags & ~XT_SCTP_VALID_FLAGS)
  && !(info->invflags & ~XT_SCTP_VALID_FLAGS)
  && !(info->invflags & ~info->flags)
  && ((!(info->flags & XT_SCTP_CHUNK_TYPES)) ||
   (info->chunk_match_type &
    (SCTP_CHUNK_MATCH_ALL
    | SCTP_CHUNK_MATCH_ANY
    | SCTP_CHUNK_MATCH_ONLY)));
}
