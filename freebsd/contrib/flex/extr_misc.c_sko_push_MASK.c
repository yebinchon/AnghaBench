#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sko_state {int dc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sko_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int sko_len ; 
 struct sko_state* sko_stack ; 
 int sko_sz ; 

__attribute__((used)) static void FUNC4(bool dc)
{
    if(!sko_stack){
        sko_sz = 1;
        sko_stack = (struct sko_state*)FUNC1(sizeof(struct sko_state)*sko_sz);
        if (!sko_stack)
            FUNC3(FUNC0("allocation of sko_stack failed"));
        sko_len = 0;
    }
    if(sko_len >= sko_sz){
        sko_sz *= 2;
        sko_stack = (struct sko_state*)FUNC2(sko_stack,sizeof(struct sko_state)*sko_sz);
    }
    
    /* initialize to zero and push */
    sko_stack[sko_len].dc = dc;
    sko_len++;
}