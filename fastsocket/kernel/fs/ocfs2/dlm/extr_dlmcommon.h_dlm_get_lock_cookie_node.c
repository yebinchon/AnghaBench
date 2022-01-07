
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;



__attribute__((used)) static inline u8 dlm_get_lock_cookie_node(u64 cookie)
{
 u8 ret;
 cookie >>= 56;
 ret = (u8)(cookie & 0xffULL);
 return ret;
}
