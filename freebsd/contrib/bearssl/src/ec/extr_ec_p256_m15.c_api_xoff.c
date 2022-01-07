
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
api_xoff(int curve, size_t *len)
{
 (void)curve;
 *len = 32;
 return 1;
}
