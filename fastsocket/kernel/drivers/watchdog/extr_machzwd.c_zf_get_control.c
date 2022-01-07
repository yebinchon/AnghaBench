
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL ;
 unsigned short zf_readw (int ) ;

__attribute__((used)) static inline unsigned short zf_get_control(void)
{
 return zf_readw(CONTROL);
}
