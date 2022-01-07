; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_try_to_free_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_try_to_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zonelist = type { i32 }
%struct.scan_control = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }

@laptop_mode = common dso_local global i32 0, align 4
@vm_swappiness = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @try_to_free_pages(%struct.zonelist* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.zonelist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scan_control, align 8
  store %struct.zonelist* %0, %struct.zonelist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 0
  %12 = load i32, i32* @laptop_mode, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %11, align 8
  %16 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 4
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 6
  %24 = load i32, i32* @vm_swappiness, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 7
  %26 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @trace_mm_vmscan_direct_reclaim_begin(i32 %29, i32 %31, i32 %32)
  %34 = load %struct.zonelist*, %struct.zonelist** %5, align 8
  %35 = call i64 @do_try_to_free_pages(%struct.zonelist* %34, %struct.scan_control* %10)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @trace_mm_vmscan_direct_reclaim_end(i64 %36)
  %38 = load i64, i64* %9, align 8
  ret i64 %38
}

declare dso_local i32 @trace_mm_vmscan_direct_reclaim_begin(i32, i32, i32) #1

declare dso_local i64 @do_try_to_free_pages(%struct.zonelist*, %struct.scan_control*) #1

declare dso_local i32 @trace_mm_vmscan_direct_reclaim_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
