; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }

@files = common dso_local global i32 0, align 4
@cft_memory_pressure_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys*, %struct.cgroup*)* @cpuset_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_populate(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i32, align 4
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %7 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %8 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %9 = load i32, i32* @files, align 4
  %10 = load i32, i32* @files, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @cgroup_add_files(%struct.cgroup* %7, %struct.cgroup_subsys* %8, i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %24 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %25 = call i32 @cgroup_add_file(%struct.cgroup* %23, %struct.cgroup_subsys* %24, i32* @cft_memory_pressure_enabled)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @cgroup_add_files(%struct.cgroup*, %struct.cgroup_subsys*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cgroup_add_file(%struct.cgroup*, %struct.cgroup_subsys*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
