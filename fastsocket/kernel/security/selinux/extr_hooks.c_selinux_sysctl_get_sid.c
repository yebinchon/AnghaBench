
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {char* procname; struct TYPE_3__* parent; } ;
typedef TYPE_1__ ctl_table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int free_page (unsigned long) ;
 int memcpy (char*,char const*,int) ;
 int security_genfs_sid (char*,char*,int ,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int selinux_sysctl_get_sid(ctl_table *table, u16 tclass, u32 *sid)
{
 int buflen, rc;
 char *buffer, *path, *end;

 rc = -ENOMEM;
 buffer = (char *)__get_free_page(GFP_KERNEL);
 if (!buffer)
  goto out;

 buflen = PAGE_SIZE;
 end = buffer+buflen;
 *--end = '\0';
 buflen--;
 path = end-1;
 *path = '/';
 while (table) {
  const char *name = table->procname;
  size_t namelen = strlen(name);
  buflen -= namelen + 1;
  if (buflen < 0)
   goto out_free;
  end -= namelen;
  memcpy(end, name, namelen);
  *--end = '/';
  path = end;
  table = table->parent;
 }
 buflen -= 4;
 if (buflen < 0)
  goto out_free;
 end -= 4;
 memcpy(end, "/sys", 4);
 path = end;
 rc = security_genfs_sid("proc", path, tclass, sid);
out_free:
 free_page((unsigned long)buffer);
out:
 return rc;
}
