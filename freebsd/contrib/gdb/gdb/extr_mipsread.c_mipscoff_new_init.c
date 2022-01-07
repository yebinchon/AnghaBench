
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int buildsym_new_init () ;
 scalar_t__ sigtramp_address ;
 int stabsread_new_init () ;

__attribute__((used)) static void
mipscoff_new_init (struct objfile *ignore)
{
  sigtramp_address = 0;
  stabsread_new_init ();
  buildsym_new_init ();
}
