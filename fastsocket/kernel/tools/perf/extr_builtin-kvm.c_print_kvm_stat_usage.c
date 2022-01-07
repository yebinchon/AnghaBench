
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void print_kvm_stat_usage(void)
{
 printf("Usage: perf kvm stat <command>\n\n");

 printf("# Available commands:\n");
 printf("\trecord: record kvm events\n");
 printf("\treport: report statistical data of kvm events\n");

 printf("\nOtherwise, it is the alias of 'perf stat':\n");
}
