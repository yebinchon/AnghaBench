
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expiry_time; int flags; } ;
struct ent {TYPE_1__ h; int name; int id; int type; int authname; } ;
struct cache_detail {int dummy; } ;
typedef int ent ;


 int CACHE_NEGATIVE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDMAP_NAMESZ ;
 int IDMAP_TYPE_GROUP ;
 int IDMAP_TYPE_USER ;
 int PAGE_SIZE ;
 int cache_put (TYPE_1__*,int *) ;
 scalar_t__ get_expiry (char**) ;
 int idtoname_cache ;
 struct ent* idtoname_lookup (struct ent*) ;
 struct ent* idtoname_update (struct ent*,struct ent*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memcpy (int ,char*,int) ;
 int memset (struct ent*,int ,int) ;
 int qword_get (char**,char*,int ) ;
 int set_bit (int ,int *) ;
 int simple_strtoul (char*,char**,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
idtoname_parse(struct cache_detail *cd, char *buf, int buflen)
{
 struct ent ent, *res;
 char *buf1, *bp;
 int len;
 int error = -EINVAL;

 if (buf[buflen - 1] != '\n')
  return (-EINVAL);
 buf[buflen - 1]= '\0';

 buf1 = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (buf1 == ((void*)0))
  return (-ENOMEM);

 memset(&ent, 0, sizeof(ent));


 if (qword_get(&buf, buf1, PAGE_SIZE) <= 0)
  goto out;
 memcpy(ent.authname, buf1, sizeof(ent.authname));


 if (qword_get(&buf, buf1, PAGE_SIZE) <= 0)
  goto out;
 ent.type = strcmp(buf1, "user") == 0 ?
  IDMAP_TYPE_USER : IDMAP_TYPE_GROUP;


 if (qword_get(&buf, buf1, PAGE_SIZE) <= 0)
  goto out;
 ent.id = simple_strtoul(buf1, &bp, 10);
 if (bp == buf1)
  goto out;


 ent.h.expiry_time = get_expiry(&buf);
 if (ent.h.expiry_time == 0)
  goto out;

 error = -ENOMEM;
 res = idtoname_lookup(&ent);
 if (!res)
  goto out;


 error = -EINVAL;
 len = qword_get(&buf, buf1, PAGE_SIZE);
 if (len < 0)
  goto out;
 if (len == 0)
  set_bit(CACHE_NEGATIVE, &ent.h.flags);
 else if (len >= IDMAP_NAMESZ)
  goto out;
 else
  memcpy(ent.name, buf1, sizeof(ent.name));
 error = -ENOMEM;
 res = idtoname_update(&ent, res);
 if (res == ((void*)0))
  goto out;

 cache_put(&res->h, &idtoname_cache);

 error = 0;
out:
 kfree(buf1);

 return error;
}
