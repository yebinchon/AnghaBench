
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap {int dummy; } ;


 int memset (struct ebitmap*,int ,int) ;

__attribute__((used)) static inline void ebitmap_init(struct ebitmap *e)
{
 memset(e, 0, sizeof(*e));
}
