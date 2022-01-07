
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lang_and_radix {int radix; int lang; } ;


 int input_radix ;
 int set_language (int ) ;

__attribute__((used)) static void
do_restore_lang_radix_cleanup (void *old)
{
  struct lang_and_radix *p = old;
  set_language (p->lang);
  input_radix = p->radix;
}
