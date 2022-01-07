
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * deprecated_call_dummy_words; } ;
typedef int LONGEST ;



void
set_gdbarch_deprecated_call_dummy_words (struct gdbarch *gdbarch,
                                         LONGEST * deprecated_call_dummy_words)
{
  gdbarch->deprecated_call_dummy_words = deprecated_call_dummy_words;
}
