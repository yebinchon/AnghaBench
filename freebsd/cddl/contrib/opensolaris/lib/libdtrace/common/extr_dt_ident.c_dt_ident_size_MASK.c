#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* di_ops; } ;
typedef  TYPE_2__ dt_ident_t ;
struct TYPE_7__ {size_t (* di_size ) (TYPE_2__*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (TYPE_2__*) ; 

size_t
FUNC2(dt_ident_t *idp)
{
	idp = FUNC0(idp);
	return (idp->di_ops->di_size(idp));
}