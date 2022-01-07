
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void checksum_help(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tchecksum FW-FILE\n");

 fprintf(stderr, "\nDescription:\n");
 fprintf(stderr, "\tThis simple utility adds/updates various "
   "checksums.\n");

 fprintf(stderr, "\nParameteres:\n");
 fprintf(stderr, "\t 'FW-FILE'	= firmware name\n");
 fprintf(stderr, "\n");
}
