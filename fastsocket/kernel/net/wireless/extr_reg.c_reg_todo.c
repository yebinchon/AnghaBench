
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int reg_process_pending_beacon_hints () ;
 int reg_process_pending_hints () ;

__attribute__((used)) static void reg_todo(struct work_struct *work)
{
 reg_process_pending_hints();
 reg_process_pending_beacon_hints();
}
