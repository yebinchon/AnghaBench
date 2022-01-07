
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT ;
 int NEXT () ;
 int OUT (int) ;
 int copy_till_end () ;

__attribute__((used)) static void
f2_record (void)
{
  NEXT ();
  OUT (0xf2);
  INT;
  NEXT ();
  OUT (0xce);
  INT;
  copy_till_end ();
}
