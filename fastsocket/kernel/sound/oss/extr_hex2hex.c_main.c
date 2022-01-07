
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buf ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int loadhex (int ,int*) ;
 int printf (char*,...) ;
 int stderr ;
 int stdin ;
 scalar_t__ strcmp (char const*,char*) ;

int main( int argc, const char * argv [] )
{
 const char * varline;
 int i,l;
 int id=0;

 if(argv[1] && strcmp(argv[1], "-i")==0)
 {
  argv++;
  argc--;
  id=1;
 }
 if(argv[1]==((void*)0))
 {
  fprintf(stderr,"hex2hex: [-i] filename\n");
  exit(1);
 }
 varline = argv[1];
 l = loadhex(stdin, buf);

 printf("/*\n *\t Computer generated file. Do not edit.\n */\n");
        printf("static int %s_len = %d;\n", varline, l);
 printf("static unsigned char %s[] %s = {\n", varline, id?"__initdata":"");

 for (i=0;i<l;i++)
 {
  if (i) printf(",");
  if (i && !(i % 16)) printf("\n");
  printf("0x%02x", buf[i]);
 }

 printf("\n};\n\n");
 return 0;
}
