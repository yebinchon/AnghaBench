
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
typedef int nlm_host_match_fn_t ;


 int nlm_traverse_locks (struct nlm_host*,struct nlm_file*,int ) ;
 int nlmsvc_traverse_blocks (struct nlm_host*,struct nlm_file*,int ) ;
 int nlmsvc_traverse_shares (struct nlm_host*,struct nlm_file*,int ) ;

__attribute__((used)) static inline int
nlm_inspect_file(struct nlm_host *host, struct nlm_file *file, nlm_host_match_fn_t match)
{
 nlmsvc_traverse_blocks(host, file, match);
 nlmsvc_traverse_shares(host, file, match);
 return nlm_traverse_locks(host, file, match);
}
