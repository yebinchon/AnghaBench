
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {unsigned long size; } ;


 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long get_next_ra_size(struct file_ra_state *ra,
      unsigned long max)
{
 unsigned long cur = ra->size;
 unsigned long newsize;

 if (cur < max / 16)
  newsize = 4 * cur;
 else
  newsize = 2 * cur;

 return min(newsize, max);
}
