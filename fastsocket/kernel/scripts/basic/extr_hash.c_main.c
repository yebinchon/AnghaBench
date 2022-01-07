
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int djb2_hash (char*) ;
 int exit (int ) ;
 int printf (char*,int) ;
 char* program ;
 int r5_hash (char*) ;
 int strcmp (char*,char*) ;
 int usage () ;

int main(int argc, char *argv[])
{
 program = argv[0];

 if (argc != 3)
  usage();
 if (!strcmp(argv[1], "djb2"))
  printf("%d\n", djb2_hash(argv[2]));
 else if (!strcmp(argv[1], "r5"))
  printf("%d\n", r5_hash(argv[2]));
 else
  usage();
 exit(0);
}
