
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtx_iv {int extend_mode; scalar_t__ extend; void* mult; void* delta; void* step; void* base; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ASHIFT ;
 int GET_MODE (int ) ;
 scalar_t__ UNKNOWN ;
 scalar_t__ VOIDmode ;
 void* simplify_gen_binary (int ,int,void*,int ) ;

__attribute__((used)) static bool
iv_shift (struct rtx_iv *iv, rtx mby)
{
  enum machine_mode mode = iv->extend_mode;

  if (GET_MODE (mby) != VOIDmode
      && GET_MODE (mby) != mode)
    return 0;

  if (iv->extend == UNKNOWN)
    {
      iv->base = simplify_gen_binary (ASHIFT, mode, iv->base, mby);
      iv->step = simplify_gen_binary (ASHIFT, mode, iv->step, mby);
    }
  else
    {
      iv->delta = simplify_gen_binary (ASHIFT, mode, iv->delta, mby);
      iv->mult = simplify_gen_binary (ASHIFT, mode, iv->mult, mby);
    }

  return 1;
}
