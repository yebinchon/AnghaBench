
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEYRING_NAME_HASH_SIZE ;

__attribute__((used)) static inline unsigned keyring_hash(const char *desc)
{
 unsigned bucket = 0;

 for (; *desc; desc++)
  bucket += (unsigned char)*desc;

 return bucket & (KEYRING_NAME_HASH_SIZE - 1);
}
