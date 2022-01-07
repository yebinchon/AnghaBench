; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.task_struct = type { i32 }
%struct.freezer = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CGROUP_FROZEN = common dso_local global i64 0, align 8
@CGROUP_FREEZING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys*, %struct.task_struct*)* @freezer_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freezer_fork(%struct.cgroup_subsys* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.cgroup_subsys*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.freezer*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = call %struct.freezer* @task_freezer(%struct.task_struct* %6)
  store %struct.freezer* %7, %struct.freezer** %5, align 8
  %8 = load %struct.freezer*, %struct.freezer** %5, align 8
  %9 = getelementptr inbounds %struct.freezer, %struct.freezer* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.freezer*, %struct.freezer** %5, align 8
  %18 = getelementptr inbounds %struct.freezer, %struct.freezer* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.freezer*, %struct.freezer** %5, align 8
  %21 = getelementptr inbounds %struct.freezer, %struct.freezer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CGROUP_FROZEN, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.freezer*, %struct.freezer** %5, align 8
  %28 = getelementptr inbounds %struct.freezer, %struct.freezer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CGROUP_FREEZING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @freeze_task(%struct.task_struct* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %16
  %36 = load %struct.freezer*, %struct.freezer** %5, align 8
  %37 = getelementptr inbounds %struct.freezer, %struct.freezer* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  br label %39

39:                                               ; preds = %35, %15
  ret void
}

declare dso_local %struct.freezer* @task_freezer(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @freeze_task(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
