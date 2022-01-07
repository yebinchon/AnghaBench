
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_nilfs(struct the_nilfs *nilfs)
{

 atomic_inc(&nilfs->ns_count);
}
