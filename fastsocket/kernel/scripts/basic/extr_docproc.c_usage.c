
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage (void)
{
 fprintf(stderr, "Usage: docproc {doc|depend} file\n");
 fprintf(stderr, "Input is read from file.tmpl. Output is sent to stdout\n");
 fprintf(stderr, "doc: frontend when generating kernel documentation\n");
 fprintf(stderr, "depend: generate list of files referenced within file\n");
 fprintf(stderr, "Environment variable SRCTREE: absolute path to sources.\n");
 fprintf(stderr, "                     KBUILD_SRC: absolute path to kernel source tree.\n");
}
