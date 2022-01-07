
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFS4_SHARE_ACCESS_BOTH ;
 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline int
access_permit_read(unsigned long access_bmap)
{
 return test_bit(NFS4_SHARE_ACCESS_READ, &access_bmap) ||
  test_bit(NFS4_SHARE_ACCESS_BOTH, &access_bmap) ||
  test_bit(NFS4_SHARE_ACCESS_WRITE, &access_bmap);
}
