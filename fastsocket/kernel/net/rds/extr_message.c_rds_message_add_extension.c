
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rds_header {unsigned char* h_exthdr; } ;


 unsigned char RDS_EXTHDR_NONE ;
 unsigned int RDS_HEADER_EXT_SPACE ;
 unsigned int __RDS_EXTHDR_MAX ;
 int memcpy (unsigned char*,void const*,unsigned int) ;
 unsigned int* rds_exthdr_size ;

int rds_message_add_extension(struct rds_header *hdr, unsigned int type,
         const void *data, unsigned int len)
{
 unsigned int ext_len = sizeof(u8) + len;
 unsigned char *dst;


 if (hdr->h_exthdr[0] != RDS_EXTHDR_NONE)
  return 0;

 if (type >= __RDS_EXTHDR_MAX
  || len != rds_exthdr_size[type])
  return 0;

 if (ext_len >= RDS_HEADER_EXT_SPACE)
  return 0;
 dst = hdr->h_exthdr;

 *dst++ = type;
 memcpy(dst, data, len);

 dst[len] = RDS_EXTHDR_NONE;
 return 1;
}
