
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivopts_data {unsigned int max_inv_id; } ;
struct iv_ca {scalar_t__* n_invariant_uses; int cands; } ;
typedef int FILE ;


 int bitmap_print (int *,int ,char*,char*) ;
 int fprintf (int *,char*,...) ;
 int iv_ca_cost (struct iv_ca*) ;

__attribute__((used)) static void
iv_ca_dump (struct ivopts_data *data, FILE *file, struct iv_ca *ivs)
{
  const char *pref = "  invariants ";
  unsigned i;

  fprintf (file, "  cost %d\n", iv_ca_cost (ivs));
  bitmap_print (file, ivs->cands, "  candidates ","\n");

  for (i = 1; i <= data->max_inv_id; i++)
    if (ivs->n_invariant_uses[i])
      {
 fprintf (file, "%s%d", pref, i);
 pref = ", ";
      }
  fprintf (file, "\n");
}
