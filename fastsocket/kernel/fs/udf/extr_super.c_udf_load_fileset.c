
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;
struct TYPE_5__ {int tagSerialNum; } ;
struct TYPE_4__ {int extLocation; } ;
struct fileSetDesc {TYPE_2__ descTag; TYPE_1__ rootDirectoryICB; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int s_serial_number; } ;


 TYPE_3__* UDF_SB (struct super_block*) ;
 int le16_to_cpu (int ) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 int udf_debug (char*,int ,int ) ;

__attribute__((used)) static void udf_load_fileset(struct super_block *sb, struct buffer_head *bh,
        struct kernel_lb_addr *root)
{
 struct fileSetDesc *fset;

 fset = (struct fileSetDesc *)bh->b_data;

 *root = lelb_to_cpu(fset->rootDirectoryICB.extLocation);

 UDF_SB(sb)->s_serial_number = le16_to_cpu(fset->descTag.tagSerialNum);

 udf_debug("Rootdir at block=%d, partition=%d\n",
    root->logicalBlockNum, root->partitionReferenceNum);
}
