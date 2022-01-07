
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int * layout; int rwsem; scalar_t__ delegation_state; int * delegation; int open_states; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_rwsem (int *) ;

__attribute__((used)) static inline void nfs4_init_once(struct nfs_inode *nfsi)
{







}
