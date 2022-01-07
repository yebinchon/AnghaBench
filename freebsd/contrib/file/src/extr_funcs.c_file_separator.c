
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int file_printf (struct magic_set*,char*) ;

int
file_separator(struct magic_set *ms)
{
 return file_printf(ms, "\n- ");
}
