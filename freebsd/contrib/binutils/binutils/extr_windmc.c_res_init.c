
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obstack_init (int *) ;
 int res_obstack ;

__attribute__((used)) static void
res_init (void)
{
  obstack_init (&res_obstack);
}
