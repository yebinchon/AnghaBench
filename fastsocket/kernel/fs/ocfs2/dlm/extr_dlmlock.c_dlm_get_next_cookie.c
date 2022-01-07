
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int dlm_cookie_lock ;
 int dlm_next_cookie ;
 int mlog (int ,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void dlm_get_next_cookie(u8 node_num, u64 *cookie)
{
 u64 tmpnode = node_num;


 tmpnode <<= 56;

 spin_lock(&dlm_cookie_lock);
 *cookie = (dlm_next_cookie | tmpnode);
 if (++dlm_next_cookie & 0xff00000000000000ull) {
  mlog(0, "This node's cookie will now wrap!\n");
  dlm_next_cookie = 1;
 }
 spin_unlock(&dlm_cookie_lock);
}
