
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int pid; char* comm; int mg; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,int,char*) ;
 size_t map_groups__fprintf (int *,int ,int *) ;
 int verbose ;

__attribute__((used)) static size_t thread__fprintf(struct thread *self, FILE *fp)
{
 return fprintf(fp, "Thread %d %s\n", self->pid, self->comm) +
        map_groups__fprintf(&self->mg, verbose, fp);
}
