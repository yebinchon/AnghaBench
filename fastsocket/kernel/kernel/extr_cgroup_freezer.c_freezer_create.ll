; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.freezer = type { %struct.cgroup_subsys_state, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CGROUP_THAWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @freezer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @freezer_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.freezer*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.freezer* @kzalloc(i32 12, i32 %7)
  store %struct.freezer* %8, %struct.freezer** %6, align 8
  %9 = load %struct.freezer*, %struct.freezer** %6, align 8
  %10 = icmp ne %struct.freezer* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %13)
  store %struct.cgroup_subsys_state* %14, %struct.cgroup_subsys_state** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.freezer*, %struct.freezer** %6, align 8
  %17 = getelementptr inbounds %struct.freezer, %struct.freezer* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load i32, i32* @CGROUP_THAWED, align 4
  %20 = load %struct.freezer*, %struct.freezer** %6, align 8
  %21 = getelementptr inbounds %struct.freezer, %struct.freezer* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.freezer*, %struct.freezer** %6, align 8
  %23 = getelementptr inbounds %struct.freezer, %struct.freezer* %22, i32 0, i32 0
  store %struct.cgroup_subsys_state* %23, %struct.cgroup_subsys_state** %3, align 8
  br label %24

24:                                               ; preds = %15, %11
  %25 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %25
}

declare dso_local %struct.freezer* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
