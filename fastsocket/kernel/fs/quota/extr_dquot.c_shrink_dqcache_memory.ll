; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_shrink_dqcache_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_shrink_dqcache_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.shrinker = type { i32 }

@dq_list_lock = common dso_local global i32 0, align 4
@dqstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sysctl_vfs_cache_pressure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shrinker*, i32, i32)* @shrink_dqcache_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_dqcache_memory(%struct.shrinker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = call i32 @spin_lock(i32* @dq_list_lock)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @prune_dqcache(i32 %11)
  %13 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %14

14:                                               ; preds = %9, %3
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dqstats, i32 0, i32 0), align 4
  %16 = sdiv i32 %15, 100
  %17 = load i32, i32* @sysctl_vfs_cache_pressure, align 4
  %18 = mul nsw i32 %16, %17
  ret i32 %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @prune_dqcache(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
