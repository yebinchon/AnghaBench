
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct rds_header {unsigned int* h_exthdr; } ;


 unsigned int RDS_EXTHDR_NONE ;
 unsigned int RDS_HEADER_EXT_SPACE ;
 unsigned int __RDS_EXTHDR_MAX ;
 int memcpy (void*,unsigned int*,unsigned int) ;
 unsigned int* rds_exthdr_size ;

int rds_message_next_extension(struct rds_header *hdr,
  unsigned int *pos, void *buf, unsigned int *buflen)
{
 unsigned int offset, ext_type, ext_len;
 u8 *src = hdr->h_exthdr;

 offset = *pos;
 if (offset >= RDS_HEADER_EXT_SPACE)
  goto none;



 ext_type = src[offset++];

 if (ext_type == RDS_EXTHDR_NONE || ext_type >= __RDS_EXTHDR_MAX)
  goto none;
 ext_len = rds_exthdr_size[ext_type];
 if (offset + ext_len > RDS_HEADER_EXT_SPACE)
  goto none;

 *pos = offset + ext_len;
 if (ext_len < *buflen)
  *buflen = ext_len;
 memcpy(buf, src + offset, *buflen);
 return ext_type;

none:
 *pos = RDS_HEADER_EXT_SPACE;
 *buflen = 0;
 return RDS_EXTHDR_NONE;
}
