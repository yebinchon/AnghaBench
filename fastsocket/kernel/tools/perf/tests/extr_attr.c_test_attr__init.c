
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENV ;
 int * dir ;
 int * getenv (int ) ;
 int test_attr__enabled ;

void test_attr__init(void)
{
 dir = getenv(ENV);
 test_attr__enabled = (dir != ((void*)0));
}
