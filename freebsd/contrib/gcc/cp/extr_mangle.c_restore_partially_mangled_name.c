
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int mangle_obstack ;
 int obstack_grow (int ,int *,int ) ;
 int * partially_mangled_name ;
 int partially_mangled_name_len ;

__attribute__((used)) static void
restore_partially_mangled_name (void)
{
  if (partially_mangled_name)
    {
      obstack_grow (mangle_obstack, partially_mangled_name,
      partially_mangled_name_len);
      free (partially_mangled_name);
      partially_mangled_name = ((void*)0);
    }
}
