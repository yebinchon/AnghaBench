
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_session {int refcnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int rfcomm_session_del (struct rfcomm_session*) ;

__attribute__((used)) static inline void rfcomm_session_put(struct rfcomm_session *s)
{
 if (atomic_dec_and_test(&s->refcnt))
  rfcomm_session_del(s);
}
