
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;


 scalar_t__ TRUE ;
 int hex_init () ;

__attribute__((used)) static void
ihex_init (void)
{
  static bfd_boolean inited;

  if (! inited)
    {
      inited = TRUE;
      hex_init ();
    }
}
