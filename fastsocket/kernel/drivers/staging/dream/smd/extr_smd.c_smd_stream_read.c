
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smd_channel_t ;


 int EINVAL ;
 int ch_read (int *,void*,int) ;
 int notify_other_smd () ;

__attribute__((used)) static int smd_stream_read(smd_channel_t *ch, void *data, int len)
{
 int r;

 if (len < 0)
  return -EINVAL;

 r = ch_read(ch, data, len);
 if (r > 0)
  notify_other_smd();

 return r;
}
