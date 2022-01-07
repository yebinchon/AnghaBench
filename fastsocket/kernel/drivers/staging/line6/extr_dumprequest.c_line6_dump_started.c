
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line6_dump_request {int in_progress; } ;



void line6_dump_started(struct line6_dump_request *l6dr, int dest)
{
 l6dr->in_progress = dest;
}
