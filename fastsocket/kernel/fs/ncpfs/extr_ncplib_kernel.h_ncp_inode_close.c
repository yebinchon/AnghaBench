
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int opened; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 int atomic_dec (int *) ;

__attribute__((used)) static inline void ncp_inode_close(struct inode *inode) {
 atomic_dec(&NCP_FINFO(inode)->opened);
}
