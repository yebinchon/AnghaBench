
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL ;
 int zf_writew (int ,unsigned short) ;

__attribute__((used)) static inline void zf_set_control(unsigned short new)
{
 zf_writew(CONTROL, new);
}
