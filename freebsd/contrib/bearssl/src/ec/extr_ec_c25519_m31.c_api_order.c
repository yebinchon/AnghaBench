
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char const* ORDER ;

__attribute__((used)) static const unsigned char *
api_order(int curve, size_t *len)
{
 (void)curve;
 *len = 32;
 return ORDER;
}
