
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_excludes (int ) ;
 int default_excludes ;

__attribute__((used)) static void
set_default_excludes (void)
{
  add_excludes (default_excludes);
}
