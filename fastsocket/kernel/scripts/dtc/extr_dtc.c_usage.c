
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_FDT_VERSION ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void __attribute__ ((noreturn)) usage(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tdtc [options] <input file>\n");
 fprintf(stderr, "\nOptions:\n");
 fprintf(stderr, "\t-h\n");
 fprintf(stderr, "\t\tThis help text\n");
 fprintf(stderr, "\t-q\n");
 fprintf(stderr, "\t\tQuiet: -q suppress warnings, -qq errors, -qqq all\n");
 fprintf(stderr, "\t-I <input format>\n");
 fprintf(stderr, "\t\tInput formats are:\n");
 fprintf(stderr, "\t\t\tdts - device tree source text\n");
 fprintf(stderr, "\t\t\tdtb - device tree blob\n");
 fprintf(stderr, "\t\t\tfs - /proc/device-tree style directory\n");
 fprintf(stderr, "\t-o <output file>\n");
 fprintf(stderr, "\t-O <output format>\n");
 fprintf(stderr, "\t\tOutput formats are:\n");
 fprintf(stderr, "\t\t\tdts - device tree source text\n");
 fprintf(stderr, "\t\t\tdtb - device tree blob\n");
 fprintf(stderr, "\t\t\tasm - assembler source\n");
 fprintf(stderr, "\t-V <output version>\n");
 fprintf(stderr, "\t\tBlob version to produce, defaults to %d (relevant for dtb\n\t\tand asm output only)\n", DEFAULT_FDT_VERSION);
 fprintf(stderr, "\t-R <number>\n");
 fprintf(stderr, "\t\tMake space for <number> reserve map entries (relevant for \n\t\tdtb and asm output only)\n");
 fprintf(stderr, "\t-S <bytes>\n");
 fprintf(stderr, "\t\tMake the blob at least <bytes> long (extra space)\n");
 fprintf(stderr, "\t-p <bytes>\n");
 fprintf(stderr, "\t\tAdd padding to the blob of <bytes> long (extra space)\n");
 fprintf(stderr, "\t-b <number>\n");
 fprintf(stderr, "\t\tSet the physical boot cpu\n");
 fprintf(stderr, "\t-f\n");
 fprintf(stderr, "\t\tForce - try to produce output even if the input tree has errors\n");
 fprintf(stderr, "\t-v\n");
 fprintf(stderr, "\t\tPrint DTC version and exit\n");
 exit(3);
}
