
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long isofs_get_ino(unsigned long block,
       unsigned long offset,
       unsigned long bufbits)
{
 return (block << (bufbits - 5)) | (offset >> 5);
}
