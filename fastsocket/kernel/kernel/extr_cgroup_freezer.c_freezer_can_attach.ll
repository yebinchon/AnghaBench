; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_can_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_can_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.task_struct = type { i32 }
%struct.freezer = type { i64 }

@CGROUP_THAWED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.task_struct*)* @freezer_can_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezer_can_attach(%struct.cgroup_subsys* %0, %struct.cgroup* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.freezer*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %9 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %10 = call %struct.freezer* @cgroup_freezer(%struct.cgroup* %9)
  store %struct.freezer* %10, %struct.freezer** %8, align 8
  %11 = load %struct.freezer*, %struct.freezer** %8, align 8
  %12 = getelementptr inbounds %struct.freezer, %struct.freezer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CGROUP_THAWED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local %struct.freezer* @cgroup_freezer(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
