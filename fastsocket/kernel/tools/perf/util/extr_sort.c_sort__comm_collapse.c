
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_entry {TYPE_1__* thread; } ;
typedef int int64_t ;
struct TYPE_2__ {char* comm; } ;


 int cmp_null (char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int64_t
sort__comm_collapse(struct hist_entry *left, struct hist_entry *right)
{
 char *comm_l = left->thread->comm;
 char *comm_r = right->thread->comm;

 if (!comm_l || !comm_r)
  return cmp_null(comm_l, comm_r);

 return strcmp(comm_l, comm_r);
}
