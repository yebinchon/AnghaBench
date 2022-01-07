
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct us_data {int dummy; } ;
struct TYPE_2__ {unsigned int pagesize; } ;


 TYPE_1__ MEDIA_INFO (struct us_data*) ;
 int USB_STOR_XFER_GOOD ;
 int alauda_read_block_raw (struct us_data*,int ,unsigned int,unsigned int,unsigned char*) ;
 int memmove (unsigned char*,unsigned char*,unsigned int) ;

__attribute__((used)) static int alauda_read_block(struct us_data *us, u16 pba,
  unsigned int page, unsigned int pages, unsigned char *data)
{
 int i, rc;
 unsigned int pagesize = MEDIA_INFO(us).pagesize;

 rc = alauda_read_block_raw(us, pba, page, pages, data);
 if (rc != USB_STOR_XFER_GOOD)
  return rc;


 for (i = 0; i < pages; i++) {
  int dest_offset = i * pagesize;
  int src_offset = i * (pagesize + 64);
  memmove(data + dest_offset, data + src_offset, pagesize);
 }

 return rc;
}
