
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;


 int input_stream ;
 int input_stream_pos ;
 int unichar_dup (int const*) ;

void
mc_set_content (const unichar *src)
{
  if (!src)
    return;
  input_stream = input_stream_pos = unichar_dup (src);
}
