#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void (* al_namefree ) (void*) ;void (* al_valfree ) (void*) ;int /*<<< orphan*/  al_elements; } ;
typedef  TYPE_1__ alist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int (*) (int,void*),int (*) (void*,void*)) ; 
 TYPE_1__* FUNC1 (int) ; 

alist_t *
FUNC2(int nbuckets, void (*namefree)(void *),
    void (*valfree)(void *), int (*hashfn)(int, void *),
    int (*cmpfn)(void *, void *))
{
	alist_t *alist;

	alist = FUNC1(sizeof (alist_t));
	alist->al_elements = FUNC0(nbuckets, hashfn, cmpfn);
	alist->al_namefree = namefree;
	alist->al_valfree = valfree;

	return (alist);
}