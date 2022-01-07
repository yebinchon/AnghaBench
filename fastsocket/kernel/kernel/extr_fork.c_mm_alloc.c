
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 struct mm_struct* allocate_mm () ;
 int current ;
 int memset (struct mm_struct*,int ,int) ;
 struct mm_struct* mm_init (struct mm_struct*,int ) ;

struct mm_struct * mm_alloc(void)
{
 struct mm_struct * mm;

 mm = allocate_mm();
 if (mm) {
  memset(mm, 0, sizeof(*mm));
  mm = mm_init(mm, current);
 }
 return mm;
}
