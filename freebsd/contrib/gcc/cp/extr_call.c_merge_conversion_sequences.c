
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* next; } ;
struct TYPE_7__ {scalar_t__ kind; int user_conv_p; TYPE_1__ u; } ;
typedef TYPE_2__ conversion ;


 scalar_t__ ck_identity ;
 scalar_t__ ck_user ;
 int gcc_assert (int) ;

__attribute__((used)) static conversion *
merge_conversion_sequences (conversion *user_seq, conversion *std_seq)
{
  conversion **t;

  gcc_assert (user_seq->kind == ck_user);


  t = &(std_seq);
  while ((*t)->kind != ck_identity)
    t = &((*t)->u.next);



  *t = user_seq;


  std_seq->user_conv_p = 1;

  return std_seq;
}
