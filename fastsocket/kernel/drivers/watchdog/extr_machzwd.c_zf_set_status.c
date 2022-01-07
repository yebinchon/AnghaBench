
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS ;
 int zf_writeb (int ,unsigned char) ;

__attribute__((used)) static inline void zf_set_status(unsigned char new)
{
 zf_writeb(STATUS, new);
}
