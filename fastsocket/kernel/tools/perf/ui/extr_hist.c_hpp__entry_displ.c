
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct hist_entry {long position; } ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;
 int scnprintf (char*,int,char const*,...) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hpp__entry_displ(struct perf_hpp *hpp,
       struct hist_entry *he)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 long displacement = pair ? pair->position - he->position : 0;
 const char *fmt = symbol_conf.field_sep ? "%s" : "%6.6s";
 char buf[32] = " ";

 if (displacement)
  scnprintf(buf, sizeof(buf), "%+4ld", displacement);

 return scnprintf(hpp->buf, hpp->size, fmt, buf);
}
