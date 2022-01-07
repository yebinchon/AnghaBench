
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEMLEAK_BLACK ;
 int paint_ptr (unsigned long,int ) ;

__attribute__((used)) static void make_black_object(unsigned long ptr)
{
 paint_ptr(ptr, KMEMLEAK_BLACK);
}
