
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t ENOMEM ;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static ssize_t nfs_idmap_get_desc(const char *name, size_t namelen,
    const char *type, size_t typelen, char **desc)
{
 char *cp;
 size_t desclen = typelen + namelen + 2;

 *desc = kmalloc(desclen, GFP_KERNEL);
 if (!*desc)
  return -ENOMEM;

 cp = *desc;
 memcpy(cp, type, typelen);
 cp += typelen;
 *cp++ = ':';

 memcpy(cp, name, namelen);
 cp += namelen;
 *cp = '\0';
 return desclen;
}
