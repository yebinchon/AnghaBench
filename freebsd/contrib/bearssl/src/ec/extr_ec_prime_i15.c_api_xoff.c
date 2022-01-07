
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int api_generator (int,size_t*) ;

__attribute__((used)) static size_t
api_xoff(int curve, size_t *len)
{
 api_generator(curve, len);
 *len >>= 1;
 return 1;
}
