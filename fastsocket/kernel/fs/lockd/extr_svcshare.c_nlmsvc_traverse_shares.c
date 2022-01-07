
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_share {struct nlm_share* s_next; int s_host; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {struct nlm_share* f_shares; } ;
typedef scalar_t__ (* nlm_host_match_fn_t ) (int ,struct nlm_host*) ;


 int kfree (struct nlm_share*) ;

void nlmsvc_traverse_shares(struct nlm_host *host, struct nlm_file *file,
  nlm_host_match_fn_t match)
{
 struct nlm_share *share, **shpp;

 shpp = &file->f_shares;
 while ((share = *shpp) != ((void*)0)) {
  if (match(share->s_host, host)) {
   *shpp = share->s_next;
   kfree(share);
   continue;
  }
  shpp = &share->s_next;
 }
}
