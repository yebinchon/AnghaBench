#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct neon_type_el {scalar_t__ type; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;
struct TYPE_2__ {int /*<<< orphan*/ * error; } ;

/* Variables and functions */
 int FAIL ; 
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_DDD ; 
 int /*<<< orphan*/  NS_FF ; 
 int /*<<< orphan*/  NS_FFF ; 
 int /*<<< orphan*/  NS_NULL ; 
 scalar_t__ NT_invtype ; 
 int N_EQK ; 
 int N_F32 ; 
 int N_F64 ; 
 int N_KEY ; 
 int N_VFP ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ inst ; 
 struct neon_type_el FUNC1 (int,int,int,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (int args, void (*pfn) (enum neon_shape))
{
  enum neon_shape rs;
  struct neon_type_el et;

  switch (args)
    {
    case 2:
      rs = FUNC2 (NS_FF, NS_DD, NS_NULL);
      et = FUNC1 (2, rs,
        N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      break;
    
    case 3:
      rs = FUNC2 (NS_FFF, NS_DDD, NS_NULL);
      et = FUNC1 (3, rs,
        N_EQK | N_VFP, N_EQK | N_VFP, N_F32 | N_F64 | N_KEY | N_VFP);
      break;

    default:
      FUNC0 ();
    }

  if (et.type != NT_invtype)
    {
      pfn (rs);
      return SUCCESS;
    }
  else
    inst.error = NULL;

  return FAIL;
}