
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXP ;
 int INT ;
 int NEXT () ;
 int OUT (int) ;

__attribute__((used)) static void
e2_record (void)
{
  OUT (0xe2);
  NEXT ();
  OUT (0xce);
  NEXT ();
  INT;
  EXP;
}
