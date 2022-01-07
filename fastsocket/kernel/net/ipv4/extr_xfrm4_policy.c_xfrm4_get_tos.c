
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int fl4_tos; } ;



__attribute__((used)) static int xfrm4_get_tos(struct flowi *fl)
{
 return fl->fl4_tos;
}
