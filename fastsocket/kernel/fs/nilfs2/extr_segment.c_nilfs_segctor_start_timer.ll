; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_start_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@NILFS_SEGCTOR_COMMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*)* @nilfs_segctor_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %0) #0 {
  %2 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %2, align 8
  %3 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %4 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %7 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %12 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %10
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %20 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %28 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @add_timer(%struct.TYPE_2__* %29)
  %31 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %32 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %33 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %17, %10, %1
  %37 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %2, align 8
  %38 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
