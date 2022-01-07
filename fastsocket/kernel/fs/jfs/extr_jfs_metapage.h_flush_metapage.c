
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int flag; } ;


 int META_sync ;
 int set_bit (int ,int *) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static inline void flush_metapage(struct metapage *mp)
{
 set_bit(META_sync, &mp->flag);
 write_metapage(mp);
}
