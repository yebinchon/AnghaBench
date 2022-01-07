
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct section {int scn; } ;
struct TYPE_3__ {int d_size; int* d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int EXIT_FAILURE ;
 int* calloc (int,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 int errx (int ,char*) ;
 int free (int*) ;
 int printf (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
dump_svr4_hash(struct section *s)
{
 Elf_Data *d;
 uint32_t *buf;
 uint32_t nbucket, nchain;
 uint32_t *bucket, *chain;
 uint32_t *bl, *c, maxl, total;
 int elferr, i, j;


 (void) elf_errno();
 if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  return;
 }
 if (d->d_size < 2 * sizeof(uint32_t)) {
  warnx(".hash section too small");
  return;
 }
 buf = d->d_buf;
 nbucket = buf[0];
 nchain = buf[1];
 if (nbucket <= 0 || nchain <= 0) {
  warnx("Malformed .hash section");
  return;
 }
 if (d->d_size != (nbucket + nchain + 2) * sizeof(uint32_t)) {
  warnx("Malformed .hash section");
  return;
 }
 bucket = &buf[2];
 chain = &buf[2 + nbucket];

 maxl = 0;
 if ((bl = calloc(nbucket, sizeof(*bl))) == ((void*)0))
  errx(EXIT_FAILURE, "calloc failed");
 for (i = 0; (uint32_t)i < nbucket; i++)
  for (j = bucket[i]; j > 0 && (uint32_t)j < nchain; j = chain[j])
   if (++bl[i] > maxl)
    maxl = bl[i];
 if ((c = calloc(maxl + 1, sizeof(*c))) == ((void*)0))
  errx(EXIT_FAILURE, "calloc failed");
 for (i = 0; (uint32_t)i < nbucket; i++)
  c[bl[i]]++;
 printf("\nHistogram for bucket list length (total of %u buckets):\n",
     nbucket);
 printf(" Length\tNumber\t\t%% of total\tCoverage\n");
 total = 0;
 for (i = 0; (uint32_t)i <= maxl; i++) {
  total += c[i] * i;
  printf("%7u\t%-10u\t(%5.1f%%)\t%5.1f%%\n", i, c[i],
      c[i] * 100.0 / nbucket, total * 100.0 / (nchain - 1));
 }
 free(c);
 free(bl);
}
