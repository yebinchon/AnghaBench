
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int FILE ;


 int do_fclose_cleanup ;
 struct cleanup* make_cleanup (int ,int *) ;

__attribute__((used)) static struct cleanup *
make_cleanup_fclose (FILE *file)
{
  return make_cleanup (do_fclose_cleanup, file);
}
