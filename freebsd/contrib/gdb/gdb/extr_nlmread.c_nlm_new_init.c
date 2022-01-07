
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int buildsym_new_init () ;
 int stabsread_new_init () ;

__attribute__((used)) static void
nlm_new_init (struct objfile *ignore)
{
  stabsread_new_init ();
  buildsym_new_init ();
}
