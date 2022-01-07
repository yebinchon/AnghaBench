; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_init_root_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_init_root_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroupfs_root = type { i64 }

@hierarchy_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hierarchy_id_lock = common dso_local global i32 0, align 4
@next_hierarchy_id = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroupfs_root*)* @init_root_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_root_id(%struct.cgroupfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgroupfs_root*, align 8
  %4 = alloca i32, align 4
  store %struct.cgroupfs_root* %0, %struct.cgroupfs_root** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @ida_pre_get(i32* @hierarchy_ida, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %47

10:                                               ; preds = %5
  %11 = call i32 @spin_lock(i32* @hierarchy_id_lock)
  %12 = load i64, i64* @next_hierarchy_id, align 8
  %13 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %3, align 8
  %14 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %13, i32 0, i32 0
  %15 = call i32 @ida_get_new_above(i32* @hierarchy_ida, i64 %12, i64* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %3, align 8
  %22 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %21, i32 0, i32 0
  %23 = call i32 @ida_get_new(i32* @hierarchy_ida, i64* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %10
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %3, align 8
  %29 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @next_hierarchy_id, align 8
  br label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @BUG_ON(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %27
  %42 = call i32 @spin_unlock(i32* @hierarchy_id_lock)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %5, label %46

46:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new_above(i32*, i64, i64*) #1

declare dso_local i32 @ida_get_new(i32*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
