
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adsp_wake_lock ;
 int wake_lock (int *) ;

__attribute__((used)) static inline void prevent_suspend(void)
{
 wake_lock(&adsp_wake_lock);
}
