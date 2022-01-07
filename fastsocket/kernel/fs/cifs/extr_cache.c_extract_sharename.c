
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 char* kstrndup (char*,int,int ) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;

__attribute__((used)) static char *extract_sharename(const char *treename)
{
 const char *src;
 char *delim, *dst;
 int len;


 src = treename + 2;


 delim = strchr(src, '\\');
 if (!delim)
  return ERR_PTR(-EINVAL);
 delim++;
 len = strlen(delim);


 dst = kstrndup(delim, len, GFP_KERNEL);
 if (!dst)
  return ERR_PTR(-ENOMEM);

 return dst;
}
