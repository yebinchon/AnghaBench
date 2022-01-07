
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _transp (int *,int,int,unsigned int,int ) ;
 int c2p_unsupported () ;
 int get_mask (unsigned int) ;

__attribute__((used)) static inline void transp8(u32 d[], unsigned int n, unsigned int m)
{
 u32 mask = get_mask(n);

 switch (m) {
 case 1:

  _transp(d, 0, 1, n, mask);

  _transp(d, 2, 3, n, mask);

  _transp(d, 4, 5, n, mask);

  _transp(d, 6, 7, n, mask);
  return;

 case 2:

  _transp(d, 0, 2, n, mask);
  _transp(d, 1, 3, n, mask);

  _transp(d, 4, 6, n, mask);
  _transp(d, 5, 7, n, mask);
  return;

 case 4:

  _transp(d, 0, 4, n, mask);
  _transp(d, 1, 5, n, mask);
  _transp(d, 2, 6, n, mask);
  _transp(d, 3, 7, n, mask);
  return;
 }

 c2p_unsupported();
}
