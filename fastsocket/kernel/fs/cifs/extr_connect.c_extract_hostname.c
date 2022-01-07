
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 char* kmalloc (unsigned int,int ) ;
 int memcpy (char*,char const*,unsigned int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *
extract_hostname(const char *unc)
{
 const char *src;
 char *dst, *delim;
 unsigned int len;



 src = unc + 2;


 delim = strchr(src, '\\');
 if (!delim)
  return ERR_PTR(-EINVAL);

 len = delim - src;
 dst = kmalloc((len + 1), GFP_KERNEL);
 if (dst == ((void*)0))
  return ERR_PTR(-ENOMEM);

 memcpy(dst, src, len);
 dst[len] = '\0';

 return dst;
}
