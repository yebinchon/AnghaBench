
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct CodaFid c_fid; } ;


 TYPE_1__* ITOC (struct inode*) ;

__attribute__((used)) static int coda_set_inode(struct inode *inode, void *data)
{
 struct CodaFid *fid = (struct CodaFid *)data;
 ITOC(inode)->c_fid = *fid;
 return 0;
}
