
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYBER9382 ;
 int CYBER9385 ;
 int PROVIDIA9685 ;
 scalar_t__ is_oldclock (int) ;

__attribute__((used)) static inline int is_oldprotect(int id)
{
 return is_oldclock(id) ||
  (id == PROVIDIA9685) ||
  (id == CYBER9382) ||
  (id == CYBER9385);
}
