
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int start; int allocation_group; } ;
typedef TYPE_1__ befs_inode_addr ;



__attribute__((used)) static inline int
befs_iaddr_is_empty(befs_inode_addr * iaddr)
{
 return (!iaddr->allocation_group) && (!iaddr->start) && (!iaddr->len);
}
