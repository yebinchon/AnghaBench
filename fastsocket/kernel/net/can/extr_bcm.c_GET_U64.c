
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct can_frame {scalar_t__ data; } ;



__attribute__((used)) static inline u64 GET_U64(const struct can_frame *cp)
{
 return *(u64 *)cp->data;
}
