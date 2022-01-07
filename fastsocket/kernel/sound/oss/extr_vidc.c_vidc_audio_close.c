
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vidc_busy ;

__attribute__((used)) static void vidc_audio_close(int dev)
{
 vidc_busy = 0;
}
