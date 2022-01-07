
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_filter {int pid; struct process_filter* next; int name; } ;


 struct process_filter* malloc (int) ;
 struct process_filter* process_filter ;
 int strdup (char const*) ;
 int strtoull (char const*,int *,int) ;

__attribute__((used)) static void add_process_filter(const char *string)
{
 int pid = strtoull(string, ((void*)0), 10);
 struct process_filter *filt = malloc(sizeof(*filt));

 if (!filt)
  return;

 filt->name = strdup(string);
 filt->pid = pid;
 filt->next = process_filter;

 process_filter = filt;
}
