
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_sizeof_call_dummy_words; } ;



void
set_gdbarch_deprecated_sizeof_call_dummy_words (struct gdbarch *gdbarch,
                                                int deprecated_sizeof_call_dummy_words)
{
  gdbarch->deprecated_sizeof_call_dummy_words = deprecated_sizeof_call_dummy_words;
}
