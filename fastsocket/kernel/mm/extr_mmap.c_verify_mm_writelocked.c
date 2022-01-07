
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; } ;


 int WARN_ON (int) ;
 int down_read_trylock (int *) ;
 scalar_t__ unlikely (int ) ;
 int up_read (int *) ;

__attribute__((used)) static inline void verify_mm_writelocked(struct mm_struct *mm)
{






}
