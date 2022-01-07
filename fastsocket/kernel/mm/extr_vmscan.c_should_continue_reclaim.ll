; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_should_continue_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_should_continue_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.scan_control = type { i32, i64, i64 }

@__GFP_REPEAT = common dso_local global i32 0, align 4
@NR_INACTIVE_FILE = common dso_local global i32 0, align 4
@nr_swap_pages = common dso_local global i64 0, align 8
@NR_INACTIVE_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, i64, i64, i32, %struct.scan_control*)* @should_continue_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_continue_reclaim(%struct.zone* %0, i64 %1, i64 %2, i32 %3, %struct.scan_control* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scan_control*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.scan_control* %4, %struct.scan_control** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.scan_control*, %struct.scan_control** %11, align 8
  %16 = call i32 @in_reclaim_compaction(i32 %14, %struct.scan_control* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %74

19:                                               ; preds = %5
  %20 = load %struct.scan_control*, %struct.scan_control** %11, align 8
  %21 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @__GFP_REPEAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %74

33:                                               ; preds = %29, %26
  br label %39

34:                                               ; preds = %19
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %74

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.scan_control*, %struct.scan_control** %11, align 8
  %41 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = shl i64 2, %42
  store i64 %43, i64* %12, align 8
  %44 = load %struct.zone*, %struct.zone** %7, align 8
  %45 = load i32, i32* @NR_INACTIVE_FILE, align 4
  %46 = call i64 @zone_page_state(%struct.zone* %44, i32 %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* @nr_swap_pages, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.zone*, %struct.zone** %7, align 8
  %51 = load i32, i32* @NR_INACTIVE_ANON, align 4
  %52 = call i64 @zone_page_state(%struct.zone* %50, i32 %51)
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %49, %39
  %56 = load %struct.scan_control*, %struct.scan_control** %11, align 8
  %57 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %74

66:                                               ; preds = %61, %55
  %67 = load %struct.zone*, %struct.zone** %7, align 8
  %68 = load %struct.scan_control*, %struct.scan_control** %11, align 8
  %69 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @compaction_suitable(%struct.zone* %67, i64 %70)
  switch i32 %71, label %73 [
    i32 128, label %72
    i32 129, label %72
  ]

72:                                               ; preds = %66, %66
  store i32 0, i32* %6, align 4
  br label %74

73:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %72, %65, %37, %32, %18
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @in_reclaim_compaction(i32, %struct.scan_control*) #1

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i32 @compaction_suitable(%struct.zone*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
