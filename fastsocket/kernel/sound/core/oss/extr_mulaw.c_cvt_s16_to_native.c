
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mulaw_priv {scalar_t__ native_bytes; scalar_t__ copy_bytes; int native_ofs; int copy_ofs; scalar_t__ cvt_endian; int flip; } ;


 int memcpy (unsigned char*,char*,scalar_t__) ;
 int memset (unsigned char*,int ,scalar_t__) ;
 int swab16 (int ) ;

__attribute__((used)) static inline void cvt_s16_to_native(struct mulaw_priv *data,
         unsigned char *dst, u16 sample)
{
 sample ^= data->flip;
 if (data->cvt_endian)
  sample = swab16(sample);
 if (data->native_bytes > data->copy_bytes)
  memset(dst, 0, data->native_bytes);
 memcpy(dst + data->native_ofs, (char *)&sample + data->copy_ofs,
        data->copy_bytes);
}
