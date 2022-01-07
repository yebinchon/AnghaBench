
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int flag; } ;


 int META_dirty ;
 int release_metapage (struct metapage*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void write_metapage(struct metapage *mp)
{
 set_bit(META_dirty, &mp->flag);
 release_metapage(mp);
}
