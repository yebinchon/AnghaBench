
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; int data_len; } ;
typedef TYPE_1__ br_x509_certificate ;


 scalar_t__ eqstr (char const*,char*) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int print_blob (char*,TYPE_1__*,int ) ;
 int printf (char*,...) ;
 TYPE_1__* read_certificates (char const*,size_t*) ;
 int sprintf (char*,char*,int ) ;
 int stderr ;
 int usage_chain () ;
 int xfree (TYPE_1__*) ;

int
do_chain(int argc, char *argv[])
{
 int retcode;
 int verbose;
 int i, num_files;
 long k, ctr;

 retcode = 0;
 verbose = 1;
 num_files = 0;
 for (i = 0; i < argc; i ++) {
  const char *arg;

  arg = argv[i];
  if (arg[0] != '-') {
   num_files ++;
   continue;
  }
  argv[i] = ((void*)0);
  if (eqstr(arg, "-v") || eqstr(arg, "-verbose")) {
   verbose = 1;
  } else if (eqstr(arg, "-q") || eqstr(arg, "-quiet")) {
   verbose = 0;
  } else {
   fprintf(stderr, "ERROR: unknown option: '%s'\n", arg);
   usage_chain();
   goto chain_exit_error;
  }
 }
 if (num_files == 0) {
  fprintf(stderr, "ERROR: no certificate file provided\n");
  usage_chain();
  goto chain_exit_error;
 }

 ctr = 0;
 for (i = 0; i < argc; i ++) {
  const char *fname;
  br_x509_certificate *xcs;
  size_t u, num;

  fname = argv[i];
  if (fname == ((void*)0)) {
   continue;
  }
  if (verbose) {
   fprintf(stderr, "Reading file '%s': ", fname);
   fflush(stderr);
  }
  xcs = read_certificates(fname, &num);
  if (xcs == ((void*)0)) {
   goto chain_exit_error;
  }
  if (verbose) {
   fprintf(stderr, "%lu certificate%s\n",
    (unsigned long)num, num > 1 ? "s" : "");
  }
  for (u = 0; u < num; u ++) {
   char tmp[50];

   sprintf(tmp, "CERT%ld", ctr ++);
   print_blob(tmp, xcs[u].data, xcs[u].data_len);
   xfree(xcs[u].data);
  }
  xfree(xcs);
 }

 printf("\nstatic const br_x509_certificate CHAIN[] = {");
 for (k = 0; k < ctr; k ++) {
  if (k != 0) {
   printf(",");
  }
  printf("\n\t{ (unsigned char *)CERT%ld, sizeof CERT%ld }",
   k, k);
 }
 printf("\n};\n");
 printf("\n#define CHAIN_LEN   %ld\n", ctr);




chain_exit:
 return retcode;

chain_exit_error:
 retcode = -1;
 goto chain_exit;
}
