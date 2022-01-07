
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iovec {scalar_t__ iov_len; } ;



__attribute__((used)) static inline int msg_calc_data_size(struct iovec const *msg_sect, u32 num_sect)
{
 int dsz = 0;
 int i;

 for (i = 0; i < num_sect; i++)
  dsz += msg_sect[i].iov_len;
 return dsz;
}
