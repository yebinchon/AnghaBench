
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int dummy; } ;


 int _metapage_homeok (struct metapage*) ;
 int hold_metapage (struct metapage*) ;
 int put_metapage (struct metapage*) ;

__attribute__((used)) static inline void metapage_homeok(struct metapage *mp)
{
 hold_metapage(mp);
 _metapage_homeok(mp);
 put_metapage(mp);
}
