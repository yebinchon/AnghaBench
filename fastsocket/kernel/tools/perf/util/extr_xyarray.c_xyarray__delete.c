
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xyarray {int dummy; } ;


 int free (struct xyarray*) ;

void xyarray__delete(struct xyarray *xy)
{
 free(xy);
}
