
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_lenEAttr; TYPE_1__ i_ext; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;


 int KM_USER0 ;
 int PAGE_CACHE_SIZE ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (scalar_t__,char*,unsigned int) ;
 int simple_write_end (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ;

__attribute__((used)) static int udf_adinicb_write_end(struct file *file,
   struct address_space *mapping,
   loff_t pos, unsigned len, unsigned copied,
   struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 unsigned offset = pos & (PAGE_CACHE_SIZE - 1);
 char *kaddr;
 struct udf_inode_info *iinfo = UDF_I(inode);

 kaddr = kmap_atomic(page, KM_USER0);
 memcpy(iinfo->i_ext.i_data + iinfo->i_lenEAttr + offset,
  kaddr + offset, copied);
 kunmap_atomic(kaddr, KM_USER0);

 return simple_write_end(file, mapping, pos, len, copied, page, fsdata);
}
