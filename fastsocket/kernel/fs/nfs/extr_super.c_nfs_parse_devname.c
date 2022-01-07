
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfs_parse_protected_hostname (char const*,char**,size_t,char**,size_t) ;
 int nfs_parse_simple_hostname (char const*,char**,size_t,char**,size_t) ;

__attribute__((used)) static int nfs_parse_devname(const char *dev_name,
        char **hostname, size_t maxnamlen,
        char **export_path, size_t maxpathlen)
{
 if (*dev_name == '[')
  return nfs_parse_protected_hostname(dev_name,
          hostname, maxnamlen,
          export_path, maxpathlen);

 return nfs_parse_simple_hostname(dev_name,
      hostname, maxnamlen,
      export_path, maxpathlen);
}
