
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_fileident_bh {int dummy; } ;
struct long_ad {int dummy; } ;
struct inode {int i_sb; } ;
struct fileIdentDesc {int icb; int fileCharacteristics; } ;


 int FID_FILE_CHAR_DELETED ;
 int UDF_FLAG_STRICT ;
 scalar_t__ UDF_QUERY_FLAG (int ,int ) ;
 int memset (int *,int,int) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;

__attribute__((used)) static int udf_delete_entry(struct inode *inode, struct fileIdentDesc *fi,
       struct udf_fileident_bh *fibh,
       struct fileIdentDesc *cfi)
{
 cfi->fileCharacteristics |= FID_FILE_CHAR_DELETED;

 if (UDF_QUERY_FLAG(inode->i_sb, UDF_FLAG_STRICT))
  memset(&(cfi->icb), 0x00, sizeof(struct long_ad));

 return udf_write_fi(inode, cfi, fi, fibh, ((void*)0), ((void*)0));
}
