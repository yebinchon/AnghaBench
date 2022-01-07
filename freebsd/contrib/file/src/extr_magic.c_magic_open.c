
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 struct magic_set* file_ms_alloc (int) ;

struct magic_set *
magic_open(int flags)
{
 return file_ms_alloc(flags);
}
