; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_age_active_anon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_age_active_anon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.scan_control = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.mem_cgroup_zone = type { %struct.zone*, %struct.mem_cgroup* }

@total_swap_pages = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*, %struct.scan_control*, i32)* @age_active_anon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_active_anon(%struct.zone* %0, %struct.scan_control* %1, i32 %2) #0 {
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.scan_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca %struct.mem_cgroup_zone, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.scan_control* %1, %struct.scan_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @total_swap_pages, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* null, i32* null)
  store %struct.mem_cgroup* %13, %struct.mem_cgroup** %7, align 8
  br label %14

14:                                               ; preds = %29, %12
  %15 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %8, i32 0, i32 0
  %16 = load %struct.zone*, %struct.zone** %4, align 8
  store %struct.zone* %16, %struct.zone** %15, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %8, i32 0, i32 1
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %17, align 8
  %19 = call i64 @inactive_anon_is_low(%struct.mem_cgroup_zone* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %23 = load %struct.scan_control*, %struct.scan_control** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @shrink_active_list(i32 %22, %struct.mem_cgroup_zone* %8, %struct.scan_control* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %28 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* %27, i32* null)
  store %struct.mem_cgroup* %28, %struct.mem_cgroup** %7, align 8
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %31 = icmp ne %struct.mem_cgroup* %30, null
  br i1 %31, label %14, label %32

32:                                               ; preds = %11, %29
  ret void
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(i32*, %struct.mem_cgroup*, i32*) #1

declare dso_local i64 @inactive_anon_is_low(%struct.mem_cgroup_zone*) #1

declare dso_local i32 @shrink_active_list(i32, %struct.mem_cgroup_zone*, %struct.scan_control*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
