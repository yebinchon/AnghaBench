
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {int dummy; } ;


 int error (char*,char const*) ;
 struct job* getjob_nonotfound (char const*) ;

__attribute__((used)) static struct job *
getjob(const char *name)
{
 struct job *jp;

 jp = getjob_nonotfound(name);
 if (jp == ((void*)0))
  error("No such job: %s", name);
 return (jp);
}
