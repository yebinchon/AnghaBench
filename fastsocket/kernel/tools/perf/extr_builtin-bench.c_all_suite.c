
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bench_suite {char* name; int (* fn ) (int,char const**,int *) ;} ;
struct bench_subsys {char* name; struct bench_suite* suites; } ;


 int printf (char*,...) ;
 int stub1 (int,char const**,int *) ;

__attribute__((used)) static void all_suite(struct bench_subsys *subsys)
{
 int i;
 const char *argv[2];
 struct bench_suite *suites = subsys->suites;

 argv[1] = ((void*)0);






 for (i = 0; suites[i].fn; i++) {
  printf("# Running %s/%s benchmark...\n",
         subsys->name,
         suites[i].name);

  argv[1] = suites[i].name;
  suites[i].fn(1, argv, ((void*)0));
  printf("\n");
 }
}
