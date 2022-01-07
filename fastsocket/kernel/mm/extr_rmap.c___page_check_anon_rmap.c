
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* anon_vma; } ;
struct page {scalar_t__ index; } ;
struct TYPE_4__ {scalar_t__ root; } ;
struct TYPE_3__ {scalar_t__ root; } ;


 int BUG_ON (int) ;
 scalar_t__ linear_page_index (struct vm_area_struct*,unsigned long) ;
 TYPE_2__* page_anon_vma (struct page*) ;

__attribute__((used)) static void __page_check_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address)
{
}
