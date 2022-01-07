
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int vrows; scalar_t__ yscroll; } ;



__attribute__((used)) static inline int real_y(struct display *p, int ypos)
{
 int rows = p->vrows;

 ypos += p->yscroll;
 return ypos < rows ? ypos : ypos - rows;
}
