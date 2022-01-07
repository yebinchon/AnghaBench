
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_priv {int copy_ofs; int src_ofs; unsigned int flip; int dst_ofs; int dst_bytes; scalar_t__ cvt_endian; int copy_bytes; } ;


 int memcpy (unsigned char*,unsigned char*,int ) ;
 unsigned int swab32 (unsigned int) ;

__attribute__((used)) static inline void do_convert(struct linear_priv *data,
         unsigned char *dst, unsigned char *src)
{
 unsigned int tmp = 0;
 unsigned char *p = (unsigned char *)&tmp;

 memcpy(p + data->copy_ofs, src + data->src_ofs, data->copy_bytes);
 if (data->cvt_endian)
  tmp = swab32(tmp);
 tmp ^= data->flip;
 memcpy(dst, p + data->dst_ofs, data->dst_bytes);
}
