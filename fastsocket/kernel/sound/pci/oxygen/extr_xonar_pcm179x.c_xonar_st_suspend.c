
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int xonar_st_cleanup (struct oxygen*) ;

__attribute__((used)) static void xonar_st_suspend(struct oxygen *chip)
{
 xonar_st_cleanup(chip);
}
