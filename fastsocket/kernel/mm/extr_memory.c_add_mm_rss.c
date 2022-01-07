
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int add_mm_counter (struct mm_struct*,int,int) ;

__attribute__((used)) static inline void
add_mm_rss(struct mm_struct *mm, int file_rss, int anon_rss, int swap_usage)
{
 if (file_rss)
  add_mm_counter(mm, file_rss, file_rss);
 if (anon_rss)
  add_mm_counter(mm, anon_rss, anon_rss);
 if (swap_usage)
  add_mm_counter(mm, swap_usage, swap_usage);
}
