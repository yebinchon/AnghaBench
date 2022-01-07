
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int empty ;
 int schedule () ;

__attribute__((used)) static void dac_audio_sync(void)
{
 while (!empty)
  schedule();
}
