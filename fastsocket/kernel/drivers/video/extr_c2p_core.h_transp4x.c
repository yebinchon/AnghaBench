
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _transp (int *,int,int,unsigned int,int ) ;
 int c2p_unsupported () ;
 int get_mask (unsigned int) ;

__attribute__((used)) static inline void transp4x(u32 d[], unsigned int n, unsigned int m)
{
 u32 mask = get_mask(n);

 switch (m) {
 case 2:

  _transp(d, 2, 0, n, mask);
  _transp(d, 3, 1, n, mask);
  return;
 }

 c2p_unsupported();
}
