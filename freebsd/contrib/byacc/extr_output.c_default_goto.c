
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* goto_map ;
 int nstates ;
 int* state_count ;
 size_t* to_state ;

__attribute__((used)) static int
default_goto(int symbol)
{
    int i;
    int m;
    int n;
    int default_state;
    int max;

    m = goto_map[symbol];
    n = goto_map[symbol + 1];

    if (m == n)
 return (0);

    for (i = 0; i < nstates; i++)
 state_count[i] = 0;

    for (i = m; i < n; i++)
 state_count[to_state[i]]++;

    max = 0;
    default_state = 0;
    for (i = 0; i < nstates; i++)
    {
 if (state_count[i] > max)
 {
     max = state_count[i];
     default_state = i;
 }
    }

    return (default_state);
}
