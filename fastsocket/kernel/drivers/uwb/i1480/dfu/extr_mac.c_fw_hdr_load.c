
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i1480 {int dev; } ;
struct fw_hdr {size_t length; int const* bin; void* address; int * next; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int,size_t,int,size_t) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static
int fw_hdr_load(struct i1480 *i1480, struct fw_hdr *hdr, unsigned hdr_cnt,
  const char *_data, const u32 *data_itr, const u32 *data_top)
{
 size_t hdr_offset = (const char *) data_itr - _data;
 size_t remaining_size = (void *) data_top - (void *) data_itr;
 if (data_itr + 2 > data_top) {
  dev_err(i1480->dev, "fw hdr #%u/%zu: EOF reached in header at "
         "offset %zu, limit %zu\n",
         hdr_cnt, hdr_offset,
         (const char *) data_itr + 2 - _data,
         (const char *) data_top - _data);
  return -EINVAL;
 }
 hdr->next = ((void*)0);
 hdr->address = le32_to_cpu(*data_itr++);
 hdr->length = le32_to_cpu(*data_itr++);
 hdr->bin = data_itr;
 if (hdr->length > remaining_size) {
  dev_err(i1480->dev, "fw hdr #%u/%zu: EOF reached in data; "
         "chunk too long (%zu bytes), only %zu left\n",
         hdr_cnt, hdr_offset, hdr->length, remaining_size);
  return -EINVAL;
 }
 return 0;
}
