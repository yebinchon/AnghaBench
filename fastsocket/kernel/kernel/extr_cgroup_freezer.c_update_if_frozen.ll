; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_update_if_frozen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_update_if_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.freezer = type { i32 }
%struct.cgroup_iter = type { i32 }
%struct.task_struct = type { i32 }

@CGROUP_THAWED = common dso_local global i32 0, align 4
@CGROUP_FREEZING = common dso_local global i32 0, align 4
@CGROUP_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, %struct.freezer*)* @update_if_frozen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_if_frozen(%struct.cgroup* %0, %struct.freezer* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.freezer*, align 8
  %5 = alloca %struct.cgroup_iter, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.freezer* %1, %struct.freezer** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.freezer*, %struct.freezer** %4, align 8
  %11 = getelementptr inbounds %struct.freezer, %struct.freezer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %14 = call i32 @cgroup_iter_start(%struct.cgroup* %13, %struct.cgroup_iter* %5)
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %17 = call %struct.task_struct* @cgroup_iter_next(%struct.cgroup* %16, %struct.cgroup_iter* %5)
  store %struct.task_struct* %17, %struct.task_struct** %6, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = call i64 @is_task_frozen_enough(%struct.task_struct* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %19
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CGROUP_THAWED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  br label %58

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CGROUP_FREEZING, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @CGROUP_FROZEN, align 4
  %48 = load %struct.freezer*, %struct.freezer** %4, align 8
  %49 = getelementptr inbounds %struct.freezer, %struct.freezer* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %57

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  br label %57

57:                                               ; preds = %51, %50
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %60 = call i32 @cgroup_iter_end(%struct.cgroup* %59, %struct.cgroup_iter* %5)
  ret void
}

declare dso_local i32 @cgroup_iter_start(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local %struct.task_struct* @cgroup_iter_next(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local i64 @is_task_frozen_enough(%struct.task_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cgroup_iter_end(%struct.cgroup*, %struct.cgroup_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
