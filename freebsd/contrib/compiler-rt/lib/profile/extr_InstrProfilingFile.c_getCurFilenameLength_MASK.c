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
struct TYPE_2__ {int NumPids; int NumHosts; scalar_t__ MergePoolSize; int /*<<< orphan*/ * Hostname; int /*<<< orphan*/ * PidChars; int /*<<< orphan*/ * FilenamePat; } ;

/* Variables and functions */
 scalar_t__ SIGLEN ; 
 TYPE_1__ lprofCurFilename ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1() {
  int Len;
  if (!lprofCurFilename.FilenamePat || !lprofCurFilename.FilenamePat[0])
    return 0;

  if (!(lprofCurFilename.NumPids || lprofCurFilename.NumHosts ||
        lprofCurFilename.MergePoolSize))
    return FUNC0(lprofCurFilename.FilenamePat);

  Len = FUNC0(lprofCurFilename.FilenamePat) +
        lprofCurFilename.NumPids * (FUNC0(lprofCurFilename.PidChars) - 2) +
        lprofCurFilename.NumHosts * (FUNC0(lprofCurFilename.Hostname) - 2);
  if (lprofCurFilename.MergePoolSize)
    Len += SIGLEN;
  return Len;
}