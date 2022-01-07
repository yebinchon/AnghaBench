
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* P256_G ;

__attribute__((used)) static const unsigned char *
api_generator(int curve, size_t *len)
{
 (void)curve;
 *len = sizeof P256_G;
 return P256_G;
}
