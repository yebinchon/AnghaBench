
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ino_t ;



__attribute__((used)) static inline ino_t
cifs_uniqueid_to_ino_t(u64 fileid)
{
 ino_t ino = (ino_t) fileid;
 if (sizeof(ino_t) < sizeof(u64))
  ino ^= fileid >> (sizeof(u64)-sizeof(ino_t)) * 8;
 return ino;
}
