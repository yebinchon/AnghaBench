
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expiry_time; int flags; } ;
struct ent {TYPE_1__ h; int id; int name; int type; int authname; } ;
struct cache_detail {int dummy; } ;
typedef int ent ;


 int CACHE_NEGATIVE ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDMAP_NAMESZ ;
 int IDMAP_TYPE_GROUP ;
 int IDMAP_TYPE_USER ;
 int PAGE_SIZE ;
 int cache_put (TYPE_1__*,int *) ;
 scalar_t__ get_expiry (char**) ;
 int get_int (char**,int *) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memcpy (int ,char*,int) ;
 int memset (struct ent*,int ,int) ;
 int nametoid_cache ;
 struct ent* nametoid_lookup (struct ent*) ;
 struct ent* nametoid_update (struct ent*,struct ent*) ;
 int qword_get (char**,char*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
nametoid_parse(struct cache_detail *cd, char *buf, int buflen)
{
 struct ent ent, *res;
 char *buf1;
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


 error = qword_get(&buf, buf1, PAGE_SIZE);
 if (error <= 0 || error >= IDMAP_NAMESZ)
  goto out;
 memcpy(ent.name, buf1, sizeof(ent.name));


 ent.h.expiry_time = get_expiry(&buf);
 if (ent.h.expiry_time == 0)
  goto out;


 error = get_int(&buf, &ent.id);
 if (error == -EINVAL)
  goto out;
 if (error == -ENOENT)
  set_bit(CACHE_NEGATIVE, &ent.h.flags);

 error = -ENOMEM;
 res = nametoid_lookup(&ent);
 if (res == ((void*)0))
  goto out;
 res = nametoid_update(&ent, res);
 if (res == ((void*)0))
  goto out;

 cache_put(&res->h, &nametoid_cache);
 error = 0;
out:
 kfree(buf1);

 return (error);
}
