
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct version_info {int version; int hdr_size; } ;
struct fdt_reserve_entry {int dummy; } ;
struct fdt_header {int totalsize; } ;
struct data {int len; int val; } ;
struct boot_info {int boot_cpuid_phys; int reservelist; int dt; } ;
typedef int FILE ;


 int ARRAY_SIZE (struct version_info*) ;
 int FDT_END ;
 int bin_emit_cell (struct data*,int ) ;
 int bin_emitter ;
 int cpu_to_fdt32 (int) ;
 struct data data_append_align (struct data,int) ;
 struct data data_append_data (struct data,struct fdt_header*,int ) ;
 struct data data_append_zeroes (struct data,int) ;
 int data_free (struct data) ;
 struct data data_merge (struct data,struct data) ;
 int die (char*,int) ;
 struct data empty_data ;
 int errno ;
 int fdt32_to_cpu (int ) ;
 scalar_t__ ferror (int *) ;
 struct data flatten_reserve_list (int ,struct version_info*) ;
 int flatten_tree (int ,int *,struct data*,struct data*,struct version_info*) ;
 int fprintf (int ,char*,int,scalar_t__) ;
 int fwrite (int ,int ,int,int *) ;
 int make_fdt_header (struct fdt_header*,struct version_info*,int ,int ,int ,int ) ;
 scalar_t__ minsize ;
 int padsize ;
 int quiet ;
 int stderr ;
 int strerror (int ) ;
 struct version_info* version_table ;

void dt_to_blob(FILE *f, struct boot_info *bi, int version)
{
 struct version_info *vi = ((void*)0);
 int i;
 struct data blob = empty_data;
 struct data reservebuf = empty_data;
 struct data dtbuf = empty_data;
 struct data strbuf = empty_data;
 struct fdt_header fdt;
 int padlen = 0;

 for (i = 0; i < ARRAY_SIZE(version_table); i++) {
  if (version_table[i].version == version)
   vi = &version_table[i];
 }
 if (!vi)
  die("Unknown device tree blob version %d\n", version);

 flatten_tree(bi->dt, &bin_emitter, &dtbuf, &strbuf, vi);
 bin_emit_cell(&dtbuf, FDT_END);

 reservebuf = flatten_reserve_list(bi->reservelist, vi);


 make_fdt_header(&fdt, vi, reservebuf.len, dtbuf.len, strbuf.len,
   bi->boot_cpuid_phys);




 if (minsize > 0) {
  padlen = minsize - fdt32_to_cpu(fdt.totalsize);
  if ((padlen < 0) && (quiet < 1))
   fprintf(stderr,
    "Warning: blob size %d >= minimum size %d\n",
    fdt32_to_cpu(fdt.totalsize), minsize);
 }

 if (padsize > 0)
  padlen = padsize;

 if (padlen > 0) {
  int tsize = fdt32_to_cpu(fdt.totalsize);
  tsize += padlen;
  fdt.totalsize = cpu_to_fdt32(tsize);
 }






 blob = data_append_data(blob, &fdt, vi->hdr_size);
 blob = data_append_align(blob, 8);
 blob = data_merge(blob, reservebuf);
 blob = data_append_zeroes(blob, sizeof(struct fdt_reserve_entry));
 blob = data_merge(blob, dtbuf);
 blob = data_merge(blob, strbuf);




 if (padlen > 0)
  blob = data_append_zeroes(blob, padlen);

 fwrite(blob.val, blob.len, 1, f);

 if (ferror(f))
  die("Error writing device tree blob: %s\n", strerror(errno));





 data_free(blob);
}
