
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct policydb {int dummy; } ;
struct mls_level {int dummy; } ;
struct level_datum {void* level; void* isalias; } ;
struct hashtab {int dummy; } ;
typedef char __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int hashtab_insert (struct hashtab*,char*,struct level_datum*) ;
 void* kmalloc (int,int ) ;
 struct level_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (char) ;
 scalar_t__ mls_read_level (void*,void*) ;
 int next_entry (char*,void*,size_t) ;
 int sens_destroy (char*,struct level_datum*,int *) ;

__attribute__((used)) static int sens_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct level_datum *levdatum;
 int rc;
 __le32 buf[2];
 u32 len;

 levdatum = kzalloc(sizeof(*levdatum), GFP_ATOMIC);
 if (!levdatum) {
  rc = -ENOMEM;
  goto out;
 }

 rc = next_entry(buf, fp, sizeof buf);
 if (rc < 0)
  goto bad;

 len = le32_to_cpu(buf[0]);
 levdatum->isalias = le32_to_cpu(buf[1]);

 key = kmalloc(len + 1, GFP_ATOMIC);
 if (!key) {
  rc = -ENOMEM;
  goto bad;
 }
 rc = next_entry(key, fp, len);
 if (rc < 0)
  goto bad;
 key[len] = '\0';

 levdatum->level = kmalloc(sizeof(struct mls_level), GFP_ATOMIC);
 if (!levdatum->level) {
  rc = -ENOMEM;
  goto bad;
 }
 if (mls_read_level(levdatum->level, fp)) {
  rc = -EINVAL;
  goto bad;
 }

 rc = hashtab_insert(h, key, levdatum);
 if (rc)
  goto bad;
out:
 return rc;
bad:
 sens_destroy(key, levdatum, ((void*)0));
 goto out;
}
