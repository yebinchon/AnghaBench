
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int m_flags; int m_sbflags; int m_exflags; } ;
struct dlm_lkb {int lkb_flags; int lkb_sbflags; int lkb_exflags; } ;



__attribute__((used)) static void receive_flags(struct dlm_lkb *lkb, struct dlm_message *ms)
{
 lkb->lkb_exflags = ms->m_exflags;
 lkb->lkb_sbflags = ms->m_sbflags;
 lkb->lkb_flags = (lkb->lkb_flags & 0xFFFF0000) |
           (ms->m_flags & 0x0000FFFF);
}
