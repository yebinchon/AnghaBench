
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gstr {int len; int s; scalar_t__ max_width; } ;


 int malloc (int) ;
 int strcpy (int ,char*) ;

struct gstr str_new(void)
{
 struct gstr gs;
 gs.s = malloc(sizeof(char) * 64);
 gs.len = 64;
 gs.max_width = 0;
 strcpy(gs.s, "\0");
 return gs;
}
