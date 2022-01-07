
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aux_info_corrupted () ;

__attribute__((used)) static void
check_aux_info (int cond)
{
  if (! cond)
    aux_info_corrupted ();
}
