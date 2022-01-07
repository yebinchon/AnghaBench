
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dx_hash_info {int hash_version; int hash; int minor_hash; scalar_t__* seed; } ;
typedef int buf ;
typedef int __u32 ;
 int EXT3_HTREE_EOF ;
 int TEA_transform (int*,int*) ;
 int dx_hack_hash_signed (char const*,int) ;
 int dx_hack_hash_unsigned (char const*,int) ;
 int half_md4_transform (int*,int*) ;
 int memcpy (int*,scalar_t__*,int) ;
 void str2hashbuf_signed (char const*,int,int*,int) ;
 void str2hashbuf_unsigned (char const*,int,int*,int) ;
 void stub1 (char const*,int,int*,int) ;
 void stub2 (char const*,int,int*,int) ;

int ext3fs_dirhash(const char *name, int len, struct dx_hash_info *hinfo)
{
 __u32 hash;
 __u32 minor_hash = 0;
 const char *p;
 int i;
 __u32 in[8], buf[4];
 void (*str2hashbuf)(const char *, int, __u32 *, int) =
    str2hashbuf_signed;


 buf[0] = 0x67452301;
 buf[1] = 0xefcdab89;
 buf[2] = 0x98badcfe;
 buf[3] = 0x10325476;


 if (hinfo->seed) {
  for (i=0; i < 4; i++) {
   if (hinfo->seed[i])
    break;
  }
  if (i < 4)
   memcpy(buf, hinfo->seed, sizeof(buf));
 }

 switch (hinfo->hash_version) {
 case 130:
  hash = dx_hack_hash_unsigned(name, len);
  break;
 case 131:
  hash = dx_hack_hash_signed(name, len);
  break;
 case 132:
  str2hashbuf = str2hashbuf_unsigned;
 case 133:
  p = name;
  while (len > 0) {
   (*str2hashbuf)(p, len, in, 8);
   half_md4_transform(buf, in);
   len -= 32;
   p += 32;
  }
  minor_hash = buf[2];
  hash = buf[1];
  break;
 case 128:
  str2hashbuf = str2hashbuf_unsigned;
 case 129:
  p = name;
  while (len > 0) {
   (*str2hashbuf)(p, len, in, 4);
   TEA_transform(buf, in);
   len -= 16;
   p += 16;
  }
  hash = buf[0];
  minor_hash = buf[1];
  break;
 default:
  hinfo->hash = 0;
  return -1;
 }
 hash = hash & ~1;
 if (hash == (EXT3_HTREE_EOF << 1))
  hash = (EXT3_HTREE_EOF-1) << 1;
 hinfo->hash = hash;
 hinfo->minor_hash = minor_hash;
 return 0;
}
