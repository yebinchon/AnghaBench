
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct core_name {char* corename; int size; } ;


 int CORENAME_MAX_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_inc_return (int *) ;
 int call_count ;
 int kfree (char*) ;
 char* krealloc (char*,int,int ) ;

__attribute__((used)) static int expand_corename(struct core_name *cn)
{
 char *old_corename = cn->corename;

 cn->size = CORENAME_MAX_SIZE * atomic_inc_return(&call_count);
 cn->corename = krealloc(old_corename, cn->size, GFP_KERNEL);

 if (!cn->corename) {
  kfree(old_corename);
  return -ENOMEM;
 }

 return 0;
}
