
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int nr_running; } ;



__attribute__((used)) static void inc_nr_running(struct rq *rq)
{
 rq->nr_running++;
}
