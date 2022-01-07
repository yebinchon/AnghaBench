
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp {int size; int buf; } ;


 int scnprintf (int ,int ,char*) ;

__attribute__((used)) static int hpp__header_overhead(struct perf_hpp *hpp)
{
 return scnprintf(hpp->buf, hpp->size, "Overhead");
}
