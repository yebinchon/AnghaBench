
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W83697HF_EFER ;
 int outb_p (int,int ) ;

__attribute__((used)) static inline void w83697hf_lock(void)
{
 outb_p(0xAA, W83697HF_EFER);
}
