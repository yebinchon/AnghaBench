
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct cat_datum {void* isalias; void* value; } ;
typedef char __le32 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int cat_destroy (char*,struct cat_datum*,int *) ;
 int hashtab_insert (struct hashtab*,char*,struct cat_datum*) ;
 char* kmalloc (size_t,int ) ;
 struct cat_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (char) ;
 int next_entry (char*,void*,size_t) ;

__attribute__((used)) static int cat_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct cat_datum *catdatum;
 int rc;
 __le32 buf[3];
 u32 len;

 catdatum = kzalloc(sizeof(*catdatum), GFP_ATOMIC);
 if (!catdatum) {
  rc = -ENOMEM;
  goto out;
 }

 rc = next_entry(buf, fp, sizeof buf);
 if (rc < 0)
  goto bad;

 len = le32_to_cpu(buf[0]);
 catdatum->value = le32_to_cpu(buf[1]);
 catdatum->isalias = le32_to_cpu(buf[2]);

 key = kmalloc(len + 1, GFP_ATOMIC);
 if (!key) {
  rc = -ENOMEM;
  goto bad;
 }
 rc = next_entry(key, fp, len);
 if (rc < 0)
  goto bad;
 key[len] = '\0';

 rc = hashtab_insert(h, key, catdatum);
 if (rc)
  goto bad;
out:
 return rc;

bad:
 cat_destroy(key, catdatum, ((void*)0));
 goto out;
}
