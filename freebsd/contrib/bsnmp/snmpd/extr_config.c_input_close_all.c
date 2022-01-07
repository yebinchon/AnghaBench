
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_EMPTY (int *) ;
 int input_close () ;
 int inputs ;

__attribute__((used)) static void
input_close_all(void)
{
 while (!LIST_EMPTY(&inputs))
  input_close();
}
