
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PTR ;


 scalar_t__ memcpy (char*,char* const,size_t) ;

PTR
mempcpy (PTR dst, const PTR src, size_t len)
{
  return (char *) memcpy (dst, src, len) + len;
}
