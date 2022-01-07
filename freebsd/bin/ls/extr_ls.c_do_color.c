
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COLORFLAG_ALWAYS ;
 scalar_t__ COLORFLAG_NEVER ;
 scalar_t__ colorflag ;
 int do_color_from_env () ;

__attribute__((used)) static bool
do_color(void)
{







 return (do_color_from_env());
}
