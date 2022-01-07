
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbinfo {char* id; } ;
struct conf {int dummy; } ;


 int run_change (char*,struct conf*,char*,int) ;
 int state ;
 int state_iterate (int ,struct conf*,struct dbinfo*,unsigned int) ;

__attribute__((used)) static void
rules_restore(void)
{
 struct conf c;
 struct dbinfo dbi;
 unsigned int f;

 for (f = 1; state_iterate(state, &c, &dbi, f) == 1; f = 0) {
  if (dbi.id[0] == '\0')
   continue;
  (void)run_change("add", &c, dbi.id, sizeof(dbi.id));
 }
}
