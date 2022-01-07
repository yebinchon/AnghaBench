
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int THREAD_SIZE_ORDER ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static inline void free_thread_info(struct thread_info *ti)
{
 free_pages((unsigned long)ti, THREAD_SIZE_ORDER);
}
