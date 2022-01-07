
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int partitionReferenceNum; } ;
struct TYPE_4__ {void* i_data; } ;
struct udf_inode_info {int i_lenAlloc; int i_alloc_type; TYPE_3__ i_location; int * i_lenEAttr; TYPE_1__ i_ext; } ;
struct short_ad {int extLength; int extPosition; } ;
struct long_ad {int extLength; int extLocation; } ;
struct kernel_lb_addr {int logicalBlockNum; int partitionReferenceNum; } ;
struct inode {int dummy; } ;
struct extent_position {int offset; TYPE_2__* bh; } ;
struct allocExtDesc {int lengthAllocDescs; } ;
typedef int int8_t ;
struct TYPE_5__ {int * b_data; } ;




 int UDF_EXTENT_LENGTH_MASK ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int le32_to_cpu (int ) ;
 struct kernel_lb_addr lelb_to_cpu (int ) ;
 int udf_debug (char*,int) ;
 void* udf_file_entry_alloc_offset (struct inode*) ;
 struct long_ad* udf_get_filelongad (int *,int,int*,int) ;
 struct short_ad* udf_get_fileshortad (int *,int,int*,int) ;

int8_t udf_current_aext(struct inode *inode, struct extent_position *epos,
   struct kernel_lb_addr *eloc, uint32_t *elen, int inc)
{
 int alen;
 int8_t etype;
 uint8_t *ptr;
 struct short_ad *sad;
 struct long_ad *lad;
 struct udf_inode_info *iinfo = UDF_I(inode);

 if (!epos->bh) {
  if (!epos->offset)
   epos->offset = udf_file_entry_alloc_offset(inode);
  ptr = iinfo->i_ext.i_data + epos->offset -
   udf_file_entry_alloc_offset(inode) +
   iinfo->i_lenEAttr;
  alen = udf_file_entry_alloc_offset(inode) +
       iinfo->i_lenAlloc;
 } else {
  if (!epos->offset)
   epos->offset = sizeof(struct allocExtDesc);
  ptr = epos->bh->b_data + epos->offset;
  alen = sizeof(struct allocExtDesc) +
   le32_to_cpu(((struct allocExtDesc *)epos->bh->b_data)->
       lengthAllocDescs);
 }

 switch (iinfo->i_alloc_type) {
 case 128:
  sad = udf_get_fileshortad(ptr, alen, &epos->offset, inc);
  if (!sad)
   return -1;
  etype = le32_to_cpu(sad->extLength) >> 30;
  eloc->logicalBlockNum = le32_to_cpu(sad->extPosition);
  eloc->partitionReferenceNum =
    iinfo->i_location.partitionReferenceNum;
  *elen = le32_to_cpu(sad->extLength) & UDF_EXTENT_LENGTH_MASK;
  break;
 case 129:
  lad = udf_get_filelongad(ptr, alen, &epos->offset, inc);
  if (!lad)
   return -1;
  etype = le32_to_cpu(lad->extLength) >> 30;
  *eloc = lelb_to_cpu(lad->extLocation);
  *elen = le32_to_cpu(lad->extLength) & UDF_EXTENT_LENGTH_MASK;
  break;
 default:
  udf_debug("alloc_type = %d unsupported\n",
    iinfo->i_alloc_type);
  return -1;
 }

 return etype;
}
