
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void bytewise_xor(void *_bo, const void *_bi1, const void *_bi2,
    size_t size)
{
 u8 *bo = _bo;
 const u8 *bi1 = _bi1, *bi2 = _bi2;
 size_t itr;
 for (itr = 0; itr < size; itr++)
  bo[itr] = bi1[itr] ^ bi2[itr];
}
