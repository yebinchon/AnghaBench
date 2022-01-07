
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color {int red; int green; int blue; } ;



__attribute__((used)) static inline int is_white(struct color c)
{
    return c.red == 255 && c.green == 255 && c.blue == 255;
}
