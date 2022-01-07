
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct mfc6_cache** mfc6_cache_array; } ;
struct net {TYPE_1__ ipv6; } ;
struct mfc6_cache {struct mfc6_cache* next; int mf6c_mcastgrp; int mf6c_origin; } ;
struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_5__ {int sin6_addr; } ;
struct mf6cctl {TYPE_3__ mf6cc_mcastgrp; TYPE_2__ mf6cc_origin; } ;


 int ENOENT ;
 int MFC6_HASH (int *,int *) ;
 int ip6mr_cache_free (struct mfc6_cache*) ;
 scalar_t__ ipv6_addr_equal (int *,int *) ;
 int mrt_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int ip6mr_mfc_delete(struct net *net, struct mf6cctl *mfc)
{
 int line;
 struct mfc6_cache *c, **cp;

 line = MFC6_HASH(&mfc->mf6cc_mcastgrp.sin6_addr, &mfc->mf6cc_origin.sin6_addr);

 for (cp = &net->ipv6.mfc6_cache_array[line];
      (c = *cp) != ((void*)0); cp = &c->next) {
  if (ipv6_addr_equal(&c->mf6c_origin, &mfc->mf6cc_origin.sin6_addr) &&
      ipv6_addr_equal(&c->mf6c_mcastgrp, &mfc->mf6cc_mcastgrp.sin6_addr)) {
   write_lock_bh(&mrt_lock);
   *cp = c->next;
   write_unlock_bh(&mrt_lock);

   ip6mr_cache_free(c);
   return 0;
  }
 }
 return -ENOENT;
}
