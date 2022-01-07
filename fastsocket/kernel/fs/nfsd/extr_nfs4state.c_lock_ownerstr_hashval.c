
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct xdr_netobj {int len; int data; } ;
struct inode {int dummy; } ;


 unsigned int LOCK_HASH_MASK ;
 unsigned int file_hashval (struct inode*) ;
 unsigned int opaque_hashval (int ,int ) ;

__attribute__((used)) static inline unsigned int
lock_ownerstr_hashval(struct inode *inode, u32 cl_id,
  struct xdr_netobj *ownername)
{
 return (file_hashval(inode) + cl_id
   + opaque_hashval(ownername->data, ownername->len))
  & LOCK_HASH_MASK;
}
