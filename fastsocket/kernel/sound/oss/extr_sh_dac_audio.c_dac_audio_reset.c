
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_begin ;
 int buffer_end ;
 int dac_audio_stop_timer () ;
 int data_buffer ;
 int empty ;

__attribute__((used)) static void dac_audio_reset(void)
{
 dac_audio_stop_timer();
 buffer_begin = buffer_end = data_buffer;
 empty = 1;
}
