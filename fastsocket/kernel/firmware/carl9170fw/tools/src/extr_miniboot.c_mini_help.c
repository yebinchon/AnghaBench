
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void mini_help(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tminiboot ACTION FW-FILE [MB-FILE]\n");

 fprintf(stderr, "\nDescription:\n");
 fprintf(stderr, "\tFirmware concatenation utility.\n");

 fprintf(stderr, "\nParameteres:\n");
 fprintf(stderr, "\t'ACTION'	= [a|d]\n");
 fprintf(stderr, "\t | 'a'	= Add miniboot firmware.\n");
 fprintf(stderr, "\t * 'd'	= remove miniboot firmware.\n");
 fprintf(stderr, "\t'FW-FILE'	= destination for the package.\n");
 fprintf(stderr, "\t'MB-FILE'	= extra firmware image.\n");
}
