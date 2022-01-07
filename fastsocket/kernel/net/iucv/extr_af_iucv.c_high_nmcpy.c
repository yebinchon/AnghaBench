
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,char*,int) ;

__attribute__((used)) static inline void high_nmcpy(unsigned char *dst, char *src)
{
       memcpy(dst, src, 8);
}
