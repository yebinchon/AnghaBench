
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_deviceid {scalar_t__ data; } ;


 unsigned int NFS4_DEVICEID4_SIZE ;
 int NFS4_DEVICE_ID_HASH_MASK ;

__attribute__((used)) static inline u32
nfs4_deviceid_hash(const struct nfs4_deviceid *id)
{
 unsigned char *cptr = (unsigned char *)id->data;
 unsigned int nbytes = NFS4_DEVICEID4_SIZE;
 u32 x = 0;

 while (nbytes--) {
  x *= 37;
  x += *cptr++;
 }
 return x & NFS4_DEVICE_ID_HASH_MASK;
}
