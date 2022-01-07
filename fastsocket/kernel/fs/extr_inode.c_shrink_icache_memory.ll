; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_shrink_icache_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_shrink_icache_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.shrinker = type { i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@inodes_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sysctl_vfs_cache_pressure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shrinker*, i32, i32)* @shrink_icache_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_icache_memory(%struct.shrinker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shrinker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.shrinker* %0, %struct.shrinker** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @__GFP_FS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %24

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @prune_icache(i32 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 4
  %21 = sdiv i32 %20, 100
  %22 = load i32, i32* @sysctl_vfs_cache_pressure, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @prune_icache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
