
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsefile {int dummy; } ;


 struct parsefile basepf ;
 int error (char*) ;
 struct parsefile* parsefile ;
 int popfile () ;

void
popfilesupto(struct parsefile *file)
{
 while (parsefile != file && parsefile != &basepf)
  popfile();
 if (parsefile != file)
  error("popfilesupto() misused");
}
