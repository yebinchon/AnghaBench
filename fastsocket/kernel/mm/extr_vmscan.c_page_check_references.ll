; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_page_check_references.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_page_check_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup_zone = type { i32 }
%struct.scan_control = type { i32 }

@VM_LOCKED = common dso_local global i64 0, align 8
@PAGEREF_RECLAIM = common dso_local global i32 0, align 4
@PAGEREF_ACTIVATE = common dso_local global i32 0, align 4
@PAGEREF_KEEP = common dso_local global i32 0, align 4
@PAGEREF_RECLAIM_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.mem_cgroup_zone*, %struct.scan_control*)* @page_check_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_check_references(%struct.page* %0, %struct.mem_cgroup_zone* %1, %struct.scan_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.mem_cgroup_zone*, align 8
  %7 = alloca %struct.scan_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.mem_cgroup_zone* %1, %struct.mem_cgroup_zone** %6, align 8
  store %struct.scan_control* %2, %struct.scan_control** %7, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = load %struct.scan_control*, %struct.scan_control** %7, align 8
  %13 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @page_referenced(%struct.page* %11, i32 1, i32 %14, i64* %10)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @TestClearPageReferenced(%struct.page* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @VM_LOCKED, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @PAGEREF_RECLAIM, align 4
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i64 @PageAnon(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @PAGEREF_ACTIVATE, align 4
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @SetPageReferenced(%struct.page* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PAGEREF_ACTIVATE, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @PAGEREF_KEEP, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %24
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @PAGEREF_RECLAIM_CLEAN, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @PAGEREF_RECLAIM, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %45, %40, %38, %31, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @page_referenced(%struct.page*, i32, i32, i64*) #1

declare dso_local i32 @TestClearPageReferenced(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
