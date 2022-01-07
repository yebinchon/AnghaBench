
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCALEDIR ;
 int PACKAGE ;
 int bindtextdomain (int ,int ) ;
 int init_trigraph_map () ;

__attribute__((used)) static void
init_library (void)
{
  static int initialized = 0;

  if (! initialized)
    {
      initialized = 1;




      init_trigraph_map ();




    }
}
