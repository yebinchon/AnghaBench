
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int LZO_LEN ;
 int cpu_to_le32 (size_t) ;
 int memcpy (char*,int *,int ) ;

__attribute__((used)) static inline void write_compress_length(char *buf, size_t len)
{
 __le32 dlen;

 dlen = cpu_to_le32(len);
 memcpy(buf, &dlen, LZO_LEN);
}
