
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 int scnprintf (int ,int ,char const*,char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hpp__header_delta(struct perf_hpp *hpp)
{
 const char *fmt = symbol_conf.field_sep ? "%s" : "%7s";

 return scnprintf(hpp->buf, hpp->size, fmt, "Delta");
}
