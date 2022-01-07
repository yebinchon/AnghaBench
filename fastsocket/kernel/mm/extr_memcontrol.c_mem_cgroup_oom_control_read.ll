; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_oom_control_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_oom_control_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cgroup_map_cb = type { i32 (%struct.cgroup_map_cb*, i8*, i32)* }
%struct.mem_cgroup = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"oom_kill_disable\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"under_oom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, %struct.cgroup_map_cb*)* @mem_cgroup_oom_control_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_oom_control_read(%struct.cgroup* %0, %struct.cftype* %1, %struct.cgroup_map_cb* %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.cgroup_map_cb*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store %struct.cgroup_map_cb* %2, %struct.cgroup_map_cb** %6, align 8
  %8 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %9 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %8)
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %7, align 8
  %10 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %11 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %10, i32 0, i32 0
  %12 = load i32 (%struct.cgroup_map_cb*, i8*, i32)*, i32 (%struct.cgroup_map_cb*, i8*, i32)** %11, align 8
  %13 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %12(%struct.cgroup_map_cb* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %24 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %23, i32 0, i32 0
  %25 = load i32 (%struct.cgroup_map_cb*, i8*, i32)*, i32 (%struct.cgroup_map_cb*, i8*, i32)** %24, align 8
  %26 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %27 = call i32 %25(%struct.cgroup_map_cb* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %30 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %29, i32 0, i32 0
  %31 = load i32 (%struct.cgroup_map_cb*, i8*, i32)*, i32 (%struct.cgroup_map_cb*, i8*, i32)** %30, align 8
  %32 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %6, align 8
  %33 = call i32 %31(%struct.cgroup_map_cb* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %34

34:                                               ; preds = %28, %22
  ret i32 0
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
