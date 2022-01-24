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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/ * DynamicBufferIOBuffer ; 
 int /*<<< orphan*/  VPBufferSize ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3() {
  const char *BufferSzStr = 0;
  BufferSzStr = FUNC2("LLVM_VP_BUFFER_SIZE");
  if (BufferSzStr && BufferSzStr[0]) {
    VPBufferSize = FUNC0(BufferSzStr);
    DynamicBufferIOBuffer = (uint8_t *)FUNC1(VPBufferSize, 1);
  }
}