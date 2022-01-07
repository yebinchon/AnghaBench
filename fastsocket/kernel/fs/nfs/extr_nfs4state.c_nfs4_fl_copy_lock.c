
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs4_lock_state {int ls_count; } ;
struct TYPE_3__ {struct nfs4_lock_state* owner; } ;
struct TYPE_4__ {TYPE_1__ nfs4_fl; } ;
struct file_lock {TYPE_2__ fl_u; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void nfs4_fl_copy_lock(struct file_lock *dst, struct file_lock *src)
{
 struct nfs4_lock_state *lsp = src->fl_u.nfs4_fl.owner;

 dst->fl_u.nfs4_fl.owner = lsp;
 atomic_inc(&lsp->ls_count);
}
