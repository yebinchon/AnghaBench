
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int idr; } ;


 int idr_init (int *) ;
 int memset (struct ida*,int ,int) ;

void ida_init(struct ida *ida)
{
 memset(ida, 0, sizeof(struct ida));
 idr_init(&ida->idr);

}
