
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i1480 {int dev; } ;
struct fw_hdr {struct fw_hdr* next; scalar_t__ length; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,unsigned int) ;
 int fw_hdr_load (struct i1480*,struct fw_hdr*,unsigned int,char const*,int *,int *) ;
 int fw_hdrs_free (struct fw_hdr*) ;
 int kfree (struct fw_hdr*) ;
 struct fw_hdr* kmalloc (int,int ) ;

__attribute__((used)) static
int fw_hdrs_load(struct i1480 *i1480, struct fw_hdr **phdr,
   const char *_data, size_t data_size)
{
 int result;
 unsigned hdr_cnt = 0;
 u32 *data = (u32 *) _data, *data_itr, *data_top;
 struct fw_hdr *hdr, **prev_hdr = phdr;

 result = -EINVAL;

 if (data_size % sizeof(u32) != 0)
  goto error;
 if ((unsigned long) _data % sizeof(u16) != 0)
  goto error;
 *phdr = ((void*)0);
 data_itr = data;
 data_top = (u32 *) (_data + data_size);
 while (data_itr < data_top) {
  result = -ENOMEM;
  hdr = kmalloc(sizeof(*hdr), GFP_KERNEL);
  if (hdr == ((void*)0)) {
   dev_err(i1480->dev, "Cannot allocate fw header "
          "for chunk #%u\n", hdr_cnt);
   goto error_alloc;
  }
  result = fw_hdr_load(i1480, hdr, hdr_cnt,
         _data, data_itr, data_top);
  if (result < 0)
   goto error_load;
  data_itr += 2 + hdr->length;
  *prev_hdr = hdr;
  prev_hdr = &hdr->next;
  hdr_cnt++;
 };
 *prev_hdr = ((void*)0);
 return 0;

error_load:
 kfree(hdr);
error_alloc:
 fw_hdrs_free(*phdr);
error:
 return result;
}
