; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_init_cgroup_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_init_cgroup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroupfs_root = type { i32, i32, i32, %struct.cgroup }
%struct.cgroup = type { %struct.cgroup*, %struct.cgroupfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroupfs_root*)* @init_cgroup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cgroup_root(%struct.cgroupfs_root* %0) #0 {
  %2 = alloca %struct.cgroupfs_root*, align 8
  %3 = alloca %struct.cgroup*, align 8
  store %struct.cgroupfs_root* %0, %struct.cgroupfs_root** %2, align 8
  %4 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %2, align 8
  %5 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %4, i32 0, i32 3
  store %struct.cgroup* %5, %struct.cgroup** %3, align 8
  %6 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %2, align 8
  %7 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %6, i32 0, i32 2
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %2, align 8
  %10 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %2, align 8
  %13 = getelementptr inbounds %struct.cgroupfs_root, %struct.cgroupfs_root* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.cgroupfs_root*, %struct.cgroupfs_root** %2, align 8
  %15 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %16 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %15, i32 0, i32 1
  store %struct.cgroupfs_root* %14, %struct.cgroupfs_root** %16, align 8
  %17 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %18 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 0
  store %struct.cgroup* %17, %struct.cgroup** %19, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %21 = call i32 @init_cgroup_housekeeping(%struct.cgroup* %20)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_cgroup_housekeeping(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
