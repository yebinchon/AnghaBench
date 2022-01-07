
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;
struct symbol {int dummy; } ;
struct rb_node {int dummy; } ;



__attribute__((used)) static u32 *symbol__browser_index(struct symbol *self)
{
 return ((void *)self) - sizeof(struct rb_node) - sizeof(u32);
}
