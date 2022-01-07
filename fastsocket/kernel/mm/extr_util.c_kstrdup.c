
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 char* kmalloc_track_caller (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *kstrdup(const char *s, gfp_t gfp)
{
 size_t len;
 char *buf;

 if (!s)
  return ((void*)0);

 len = strlen(s) + 1;
 buf = kmalloc_track_caller(len, gfp);
 if (buf)
  memcpy(buf, s, len);
 return buf;
}
