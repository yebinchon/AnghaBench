; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_chunk_to_extended.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_chunk_to_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTRFS_BLOCK_GROUP_PROFILE_MASK = common dso_local global i32 0, align 4
@BTRFS_AVAIL_ALLOC_BIT_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chunk_to_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_to_extended(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @BTRFS_BLOCK_GROUP_PROFILE_MASK, align 4
  %5 = and i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @BTRFS_AVAIL_ALLOC_BIT_SINGLE, align 4
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
