
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mm; } ;


 int EHWPOISON ;
 int FOLL_HWPOISON ;
 int FOLL_TOUCH ;
 int FOLL_WRITE ;
 int __get_user_pages (TYPE_1__*,int ,unsigned long,int,int,int *,int *) ;
 TYPE_1__* current ;

__attribute__((used)) static inline int check_user_page_hwpoison(unsigned long addr)
{
 int rc, flags = FOLL_TOUCH | FOLL_HWPOISON | FOLL_WRITE;

 rc = __get_user_pages(current, current->mm, addr, 1,
         flags, ((void*)0), ((void*)0));
 return rc == -EHWPOISON;
}
