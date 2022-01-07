
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline unsigned long ocfs2_align_bytes_to_sectors(u64 bytes)
{
 return (unsigned long)((bytes + 511) >> 9);
}
