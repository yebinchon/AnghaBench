
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MOUNT ;
 int dfprintk (int ,char*,...) ;
 char* kstrndup (char const*,size_t,int ) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;

__attribute__((used)) static int nfs_parse_simple_hostname(const char *dev_name,
         char **hostname, size_t maxnamlen,
         char **export_path, size_t maxpathlen)
{
 size_t len;
 char *colon, *comma;

 colon = strchr(dev_name, ':');
 if (colon == ((void*)0))
  goto out_bad_devname;

 len = colon - dev_name;
 if (len > maxnamlen)
  goto out_hostname;


 *hostname = kstrndup(dev_name, len, GFP_KERNEL);
 if (!*hostname)
  goto out_nomem;


 comma = strchr(*hostname, ',');
 if (comma != ((void*)0)) {
  if (comma == *hostname)
   goto out_bad_devname;
  *comma = '\0';
 }

 colon++;
 len = strlen(colon);
 if (len > maxpathlen)
  goto out_path;
 *export_path = kstrndup(colon, len, GFP_KERNEL);
 if (!*export_path)
  goto out_nomem;

 dfprintk(MOUNT, "NFS: MNTPATH: '%s'\n", *export_path);
 return 0;

out_bad_devname:
 dfprintk(MOUNT, "NFS: device name not in host:path format\n");
 return -EINVAL;

out_nomem:
 dfprintk(MOUNT, "NFS: not enough memory to parse device name\n");
 return -ENOMEM;

out_hostname:
 dfprintk(MOUNT, "NFS: server hostname too long\n");
 return -ENAMETOOLONG;

out_path:
 dfprintk(MOUNT, "NFS: export pathname too long\n");
 return -ENAMETOOLONG;
}
