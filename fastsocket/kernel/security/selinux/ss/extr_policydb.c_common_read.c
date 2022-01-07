
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct policydb {int dummy; } ;
struct hashtab {int dummy; } ;
struct TYPE_2__ {int table; void* nprim; } ;
struct common_datum {TYPE_1__ permissions; void* value; } ;
typedef char __le32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PERM_SYMTAB_SIZE ;
 int common_destroy (char*,struct common_datum*,int *) ;
 int hashtab_insert (struct hashtab*,char*,struct common_datum*) ;
 char* kmalloc (size_t,int ) ;
 struct common_datum* kzalloc (int,int ) ;
 void* le32_to_cpu (char) ;
 int next_entry (char*,void*,size_t) ;
 int perm_read (struct policydb*,int ,void*) ;
 int symtab_init (TYPE_1__*,int ) ;

__attribute__((used)) static int common_read(struct policydb *p, struct hashtab *h, void *fp)
{
 char *key = ((void*)0);
 struct common_datum *comdatum;
 __le32 buf[4];
 u32 len, nel;
 int i, rc;

 comdatum = kzalloc(sizeof(*comdatum), GFP_KERNEL);
 if (!comdatum) {
  rc = -ENOMEM;
  goto out;
 }

 rc = next_entry(buf, fp, sizeof buf);
 if (rc < 0)
  goto bad;

 len = le32_to_cpu(buf[0]);
 comdatum->value = le32_to_cpu(buf[1]);

 rc = symtab_init(&comdatum->permissions, PERM_SYMTAB_SIZE);
 if (rc)
  goto bad;
 comdatum->permissions.nprim = le32_to_cpu(buf[2]);
 nel = le32_to_cpu(buf[3]);

 key = kmalloc(len + 1, GFP_KERNEL);
 if (!key) {
  rc = -ENOMEM;
  goto bad;
 }
 rc = next_entry(key, fp, len);
 if (rc < 0)
  goto bad;
 key[len] = '\0';

 for (i = 0; i < nel; i++) {
  rc = perm_read(p, comdatum->permissions.table, fp);
  if (rc)
   goto bad;
 }

 rc = hashtab_insert(h, key, comdatum);
 if (rc)
  goto bad;
out:
 return rc;
bad:
 common_destroy(key, comdatum, ((void*)0));
 goto out;
}
