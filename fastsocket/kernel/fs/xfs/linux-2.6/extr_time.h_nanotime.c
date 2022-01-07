
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 struct timespec CURRENT_TIME ;

__attribute__((used)) static inline void nanotime(struct timespec *tvp)
{
 *tvp = CURRENT_TIME;
}
