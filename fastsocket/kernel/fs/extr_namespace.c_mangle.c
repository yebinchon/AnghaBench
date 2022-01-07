
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_escape (struct seq_file*,char const*,char*) ;

__attribute__((used)) static inline void mangle(struct seq_file *m, const char *s)
{
 seq_escape(m, s, " \t\n\\");
}
