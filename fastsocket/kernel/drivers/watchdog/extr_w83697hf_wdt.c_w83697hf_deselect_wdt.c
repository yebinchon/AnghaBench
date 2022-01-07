
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w83697hf_lock () ;

__attribute__((used)) static inline void w83697hf_deselect_wdt(void)
{
 w83697hf_lock();
}
