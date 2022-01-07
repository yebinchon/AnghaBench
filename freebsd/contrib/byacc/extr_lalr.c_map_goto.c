
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Value_t ;


 int assert (int) ;
 int* from_state ;
 int* goto_map ;

__attribute__((used)) static Value_t
map_goto(int state, int symbol)
{
    int high;
    int low;
    int middle;
    int s;

    low = goto_map[symbol];
    high = goto_map[symbol + 1];

    for (;;)
    {
 assert(low <= high);
 middle = (low + high) >> 1;
 s = from_state[middle];
 if (s == state)
     return (Value_t)(middle);
 else if (s < state)
     low = middle + 1;
 else
     high = middle - 1;
    }
}
