
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct svc_expkey {int ek_fsidtype; TYPE_1__ h; int ek_path; int ek_fsid; struct auth_domain* ek_client; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int dummy; } ;


 int CACHE_NEGATIVE ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct auth_domain* auth_domain_find (char*) ;
 int auth_domain_put (struct auth_domain*) ;
 int cache_flush () ;
 int cache_put (TYPE_1__*,int *) ;
 int dprintk (char*,...) ;
 scalar_t__ get_expiry (char**) ;
 int kern_path (char*,int ,int *) ;
 int key_len (int) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memcpy (int ,char*,int) ;
 int path_put (int *) ;
 int qword_get (char**,char*,int ) ;
 int set_bit (int ,scalar_t__*) ;
 int simple_strtoul (char*,char**,int) ;
 int svc_expkey_cache ;
 struct svc_expkey* svc_expkey_lookup (struct svc_expkey*) ;
 struct svc_expkey* svc_expkey_update (struct svc_expkey*,struct svc_expkey*) ;

__attribute__((used)) static int expkey_parse(struct cache_detail *cd, char *mesg, int mlen)
{

 char *buf;
 int len;
 struct auth_domain *dom = ((void*)0);
 int err;
 int fsidtype;
 char *ep;
 struct svc_expkey key;
 struct svc_expkey *ek = ((void*)0);

 if (mesg[mlen-1] != '\n')
  return -EINVAL;
 mesg[mlen-1] = 0;
 dprintk("expkey_parse: '%s'\n", mesg);

 buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
 err = -ENOMEM;
 if (!buf)
  goto out;

 err = -EINVAL;
 if ((len=qword_get(&mesg, buf, PAGE_SIZE)) <= 0)
  goto out;

 err = -ENOENT;
 dom = auth_domain_find(buf);
 if (!dom)
  goto out;
 dprintk("found domain %s\n", buf);

 err = -EINVAL;
 if ((len=qword_get(&mesg, buf, PAGE_SIZE)) <= 0)
  goto out;
 fsidtype = simple_strtoul(buf, &ep, 10);
 if (*ep)
  goto out;
 dprintk("found fsidtype %d\n", fsidtype);
 if (key_len(fsidtype)==0)
  goto out;
 if ((len=qword_get(&mesg, buf, PAGE_SIZE)) <= 0)
  goto out;
 dprintk("found fsid length %d\n", len);
 if (len != key_len(fsidtype))
  goto out;


 key.h.flags = 0;
 key.h.expiry_time = get_expiry(&mesg);
 if (key.h.expiry_time == 0)
  goto out;

 key.ek_client = dom;
 key.ek_fsidtype = fsidtype;
 memcpy(key.ek_fsid, buf, len);

 ek = svc_expkey_lookup(&key);
 err = -ENOMEM;
 if (!ek)
  goto out;


 err = -EINVAL;
 len = qword_get(&mesg, buf, PAGE_SIZE);
 if (len < 0)
  goto out;
 dprintk("Path seems to be <%s>\n", buf);
 err = 0;
 if (len == 0) {
  set_bit(CACHE_NEGATIVE, &key.h.flags);
  ek = svc_expkey_update(&key, ek);
  if (!ek)
   err = -ENOMEM;
 } else {
  err = kern_path(buf, 0, &key.ek_path);
  if (err)
   goto out;

  dprintk("Found the path %s\n", buf);

  ek = svc_expkey_update(&key, ek);
  if (!ek)
   err = -ENOMEM;
  path_put(&key.ek_path);
 }
 cache_flush();
 out:
 if (ek)
  cache_put(&ek->h, &svc_expkey_cache);
 if (dom)
  auth_domain_put(dom);
 kfree(buf);
 if (err)
  dprintk("expkey_parse: err %d\n", err);
 return err;
}
