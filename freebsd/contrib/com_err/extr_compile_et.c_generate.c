
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ generate_c () ;
 scalar_t__ generate_h () ;

__attribute__((used)) static int
generate(void)
{
    return generate_c() || generate_h();
}
