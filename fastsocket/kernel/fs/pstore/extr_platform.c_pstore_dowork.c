
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int pstore_get_records (int) ;

__attribute__((used)) static void pstore_dowork(struct work_struct *work)
{
 pstore_get_records(1);
}
