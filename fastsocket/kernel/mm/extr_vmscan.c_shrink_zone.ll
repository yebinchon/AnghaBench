; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_shrink_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.scan_control = type { i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type { i32 }
%struct.mem_cgroup_reclaim_cookie = type { i32, %struct.zone* }
%struct.mem_cgroup_zone = type { %struct.zone*, %struct.mem_cgroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.zone*, %struct.scan_control*)* @shrink_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_zone(i32 %0, %struct.zone* %1, %struct.scan_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zone*, align 8
  %6 = alloca %struct.scan_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca %struct.mem_cgroup_reclaim_cookie, align 8
  %11 = alloca %struct.mem_cgroup*, align 8
  %12 = alloca %struct.mem_cgroup_zone, align 8
  store i32 %0, i32* %4, align 4
  store %struct.zone* %1, %struct.zone** %5, align 8
  store %struct.scan_control* %2, %struct.scan_control** %6, align 8
  br label %13

13:                                               ; preds = %52, %3
  %14 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %15 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %14, i32 0, i32 2
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %15, align 8
  store %struct.mem_cgroup* %16, %struct.mem_cgroup** %9, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %10, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %10, i32 0, i32 1
  %20 = load %struct.zone*, %struct.zone** %5, align 8
  store %struct.zone* %20, %struct.zone** %19, align 8
  %21 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %22 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %25 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %28 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %27, %struct.mem_cgroup* null, %struct.mem_cgroup_reclaim_cookie* %10)
  store %struct.mem_cgroup* %28, %struct.mem_cgroup** %11, align 8
  br label %29

29:                                               ; preds = %48, %13
  %30 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %12, i32 0, i32 0
  %31 = load %struct.zone*, %struct.zone** %5, align 8
  store %struct.zone* %31, %struct.zone** %30, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %12, i32 0, i32 1
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  store %struct.mem_cgroup* %33, %struct.mem_cgroup** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %36 = call i32 @shrink_mem_cgroup_zone(i32 %34, %struct.mem_cgroup_zone* %12, %struct.scan_control* %35)
  %37 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %38 = call i32 @global_reclaim(%struct.scan_control* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %42 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %43 = call i32 @mem_cgroup_iter_break(%struct.mem_cgroup* %41, %struct.mem_cgroup* %42)
  br label %51

44:                                               ; preds = %29
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %47 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %45, %struct.mem_cgroup* %46, %struct.mem_cgroup_reclaim_cookie* %10)
  store %struct.mem_cgroup* %47, %struct.mem_cgroup** %11, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %50 = icmp ne %struct.mem_cgroup* %49, null
  br i1 %50, label %29, label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.zone*, %struct.zone** %5, align 8
  %54 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %55 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %56, %57
  %59 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %60 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %61, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.scan_control*, %struct.scan_control** %6, align 8
  %66 = call i64 @should_continue_reclaim(%struct.zone* %53, i64 %58, i64 %63, i32 %64, %struct.scan_control* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %13, label %68

68:                                               ; preds = %52
  ret void
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup*, %struct.mem_cgroup*, %struct.mem_cgroup_reclaim_cookie*) #1

declare dso_local i32 @shrink_mem_cgroup_zone(i32, %struct.mem_cgroup_zone*, %struct.scan_control*) #1

declare dso_local i32 @global_reclaim(%struct.scan_control*) #1

declare dso_local i32 @mem_cgroup_iter_break(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

declare dso_local i64 @should_continue_reclaim(%struct.zone*, i64, i64, i32, %struct.scan_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
