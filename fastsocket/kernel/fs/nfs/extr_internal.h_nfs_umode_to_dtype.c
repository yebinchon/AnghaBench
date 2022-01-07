
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;



__attribute__((used)) static inline
unsigned char nfs_umode_to_dtype(umode_t mode)
{
 return (mode >> 12) & 15;
}
