
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int LZO_LEN ;
 size_t le32_to_cpu (int ) ;
 int memcpy (int *,char*,int ) ;

__attribute__((used)) static inline size_t read_compress_length(char *buf)
{
 __le32 dlen;

 memcpy(&dlen, buf, LZO_LEN);
 return le32_to_cpu(dlen);
}
