
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void fwinfo_info(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tfwinfo FW-FILE\n");

 fprintf(stderr, "\nDescription:\n");
 fprintf(stderr, "\tDisplay firmware descriptors information in "
   "a human readable form.\n");

 fprintf(stderr, "\nParameteres:\n");
 fprintf(stderr, "\t 'FW-FILE'	= firmware file/base-name\n\n");
}
