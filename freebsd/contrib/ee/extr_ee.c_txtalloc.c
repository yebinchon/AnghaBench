
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text {int dummy; } ;


 scalar_t__ malloc (int) ;

struct text *txtalloc()
{
 return((struct text *) malloc(sizeof( struct text)));
}
