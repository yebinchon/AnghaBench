
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int lockd_manager ;
 int locks_end_grace (int *) ;

__attribute__((used)) static void grace_ender(struct work_struct *not_used)
{
 locks_end_grace(&lockd_manager);
}
