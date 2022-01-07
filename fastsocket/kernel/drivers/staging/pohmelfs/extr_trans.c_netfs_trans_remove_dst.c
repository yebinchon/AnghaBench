
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_trans_dst {int dummy; } ;


 int netfs_trans_free_dst (struct netfs_trans_dst*) ;
 scalar_t__ netfs_trans_remove_state (struct netfs_trans_dst*) ;

__attribute__((used)) static void netfs_trans_remove_dst(struct netfs_trans_dst *dst)
{
 if (netfs_trans_remove_state(dst))
  netfs_trans_free_dst(dst);
}
