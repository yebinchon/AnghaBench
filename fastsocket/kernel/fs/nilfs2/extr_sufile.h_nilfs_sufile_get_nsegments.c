
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mi_nilfs; } ;
struct TYPE_3__ {unsigned long ns_nsegments; } ;


 TYPE_2__* NILFS_MDT (struct inode*) ;

__attribute__((used)) static inline unsigned long nilfs_sufile_get_nsegments(struct inode *sufile)
{
 return NILFS_MDT(sufile)->mi_nilfs->ns_nsegments;
}
