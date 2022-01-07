
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int flags; } ;


 int TCQ_F_BUILTIN ;

__attribute__((used)) static bool tc_qdisc_dump_ignore(struct Qdisc *q)
{
 return (q->flags & TCQ_F_BUILTIN) ? 1 : 0;
}
