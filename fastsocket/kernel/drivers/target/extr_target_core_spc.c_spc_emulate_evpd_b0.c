
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ optimal_sectors; scalar_t__ max_unmap_lba_count; scalar_t__ max_unmap_block_desc_count; scalar_t__ unmap_granularity; scalar_t__ unmap_granularity_alignment; int max_write_same_len; int hw_max_sectors; int fabric_max_sectors; scalar_t__ emulate_tpws; scalar_t__ emulate_tpu; } ;
struct se_device {TYPE_2__ dev_attrib; TYPE_1__* transport; } ;
struct se_cmd {struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {unsigned char (* get_device_type ) (struct se_device*) ;} ;


 scalar_t__ min (int ,int ) ;
 int put_unaligned_be16 (int,unsigned char*) ;
 int put_unaligned_be32 (scalar_t__,unsigned char*) ;
 int put_unaligned_be64 (int ,unsigned char*) ;
 unsigned char stub1 (struct se_device*) ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_b0(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 u32 max_sectors;
 int have_tp = 0;






 if (dev->dev_attrib.emulate_tpu || dev->dev_attrib.emulate_tpws)
  have_tp = 1;

 buf[0] = dev->transport->get_device_type(dev);
 buf[3] = have_tp ? 0x3c : 0x10;


 buf[4] = 0x01;




 put_unaligned_be16(1, &buf[6]);




 max_sectors = min(dev->dev_attrib.fabric_max_sectors,
     dev->dev_attrib.hw_max_sectors);
 put_unaligned_be32(max_sectors, &buf[8]);




 put_unaligned_be32(dev->dev_attrib.optimal_sectors, &buf[12]);




 if (!have_tp)
  goto max_write_same;




 put_unaligned_be32(dev->dev_attrib.max_unmap_lba_count, &buf[20]);




 put_unaligned_be32(dev->dev_attrib.max_unmap_block_desc_count,
      &buf[24]);




 put_unaligned_be32(dev->dev_attrib.unmap_granularity, &buf[28]);




 put_unaligned_be32(dev->dev_attrib.unmap_granularity_alignment,
      &buf[32]);
 if (dev->dev_attrib.unmap_granularity_alignment != 0)
  buf[32] |= 0x80;




max_write_same:
 put_unaligned_be64(dev->dev_attrib.max_write_same_len, &buf[36]);

 return 0;
}
