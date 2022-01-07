
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int lru_add_drain () ;

__attribute__((used)) static void lru_add_drain_per_cpu(struct work_struct *dummy)
{
 lru_add_drain();
}
