
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct policydb {TYPE_1__* symtab; int permissive_map; int policycaps; int range_tr; int te_avtab; } ;
struct TYPE_2__ {int table; } ;


 int SYM_NUM ;
 int avtab_init (int *) ;
 int cond_policydb_init (struct policydb*) ;
 int ebitmap_init (int *) ;
 int hashtab_create (int ,int ,int) ;
 int hashtab_destroy (int ) ;
 int memset (struct policydb*,int ,int) ;
 int rangetr_cmp ;
 int rangetr_hash ;
 int roles_init (struct policydb*) ;
 int symtab_init (TYPE_1__*,int ) ;
 int * symtab_sizes ;

__attribute__((used)) static int policydb_init(struct policydb *p)
{
 int i, rc;

 memset(p, 0, sizeof(*p));

 for (i = 0; i < SYM_NUM; i++) {
  rc = symtab_init(&p->symtab[i], symtab_sizes[i]);
  if (rc)
   goto out_free_symtab;
 }

 rc = avtab_init(&p->te_avtab);
 if (rc)
  goto out_free_symtab;

 rc = roles_init(p);
 if (rc)
  goto out_free_symtab;

 rc = cond_policydb_init(p);
 if (rc)
  goto out_free_symtab;

 p->range_tr = hashtab_create(rangetr_hash, rangetr_cmp, 256);
 if (!p->range_tr)
  goto out_free_symtab;

 ebitmap_init(&p->policycaps);
 ebitmap_init(&p->permissive_map);

out:
 return rc;

out_free_symtab:
 for (i = 0; i < SYM_NUM; i++)
  hashtab_destroy(p->symtab[i].table);
 goto out;
}
