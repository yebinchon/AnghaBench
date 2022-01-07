
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int br_dec64le (unsigned char const*) ;

__attribute__((used)) static void
xor_block(uint64_t *A, const void *data, size_t rate)
{
 size_t u;

 for (u = 0; u < rate; u += 8) {
  A[u >> 3] ^= br_dec64le((const unsigned char *)data + u);
 }
}
