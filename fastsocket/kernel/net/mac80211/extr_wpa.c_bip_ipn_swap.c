
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void bip_ipn_swap(u8 *d, const u8 *s)
{
 *d++ = s[5];
 *d++ = s[4];
 *d++ = s[3];
 *d++ = s[2];
 *d++ = s[1];
 *d = s[0];
}
