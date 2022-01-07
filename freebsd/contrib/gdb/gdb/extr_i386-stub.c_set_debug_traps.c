
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STACKSIZE ;
 int _catchException0 ;
 int _catchException1 ;
 int _catchException10 ;
 int _catchException11 ;
 int _catchException12 ;
 int _catchException13 ;
 int _catchException14 ;
 int _catchException16 ;
 int _catchException3 ;
 int _catchException4 ;
 int _catchException5 ;
 int _catchException6 ;
 int _catchException7 ;
 int _catchException8 ;
 int _catchException9 ;
 int exceptionHandler (int,int ) ;
 int initialized ;
 int * remcomStack ;
 int * stackPtr ;

void
set_debug_traps (void)
{
  stackPtr = &remcomStack[STACKSIZE / sizeof (int) - 1];

  exceptionHandler (0, _catchException0);
  exceptionHandler (1, _catchException1);
  exceptionHandler (3, _catchException3);
  exceptionHandler (4, _catchException4);
  exceptionHandler (5, _catchException5);
  exceptionHandler (6, _catchException6);
  exceptionHandler (7, _catchException7);
  exceptionHandler (8, _catchException8);
  exceptionHandler (9, _catchException9);
  exceptionHandler (10, _catchException10);
  exceptionHandler (11, _catchException11);
  exceptionHandler (12, _catchException12);
  exceptionHandler (13, _catchException13);
  exceptionHandler (14, _catchException14);
  exceptionHandler (16, _catchException16);

  initialized = 1;
}
