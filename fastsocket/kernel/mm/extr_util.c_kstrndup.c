
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kmalloc_track_caller (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;

char *kstrndup(const char *s, size_t max, gfp_t gfp)
{
 size_t len;
 char *buf;

 if (!s)
  return ((void*)0);

 len = strnlen(s, max);
 buf = kmalloc_track_caller(len+1, gfp);
 if (buf) {
  memcpy(buf, s, len);
  buf[len] = '\0';
 }
 return buf;
}
