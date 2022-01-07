; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compaction_suitable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compaction_suitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@COMPACT_CONTINUE = common dso_local global i64 0, align 8
@COMPACT_SKIPPED = common dso_local global i64 0, align 8
@sysctl_extfrag_threshold = common dso_local global i32 0, align 4
@COMPACT_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compaction_suitable(%struct.zone* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @COMPACT_CONTINUE, align 8
  store i64 %11, i64* %3, align 8
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.zone*, %struct.zone** %4, align 8
  %14 = call i64 @low_wmark_pages(%struct.zone* %13)
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 2, %16
  %18 = add i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load %struct.zone*, %struct.zone** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @zone_watermark_ok(%struct.zone* %19, i32 0, i64 %20, i32 0, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = load i64, i64* @COMPACT_SKIPPED, align 8
  store i64 %24, i64* %3, align 8
  br label %50

25:                                               ; preds = %12
  %26 = load %struct.zone*, %struct.zone** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fragmentation_index(%struct.zone* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @sysctl_extfrag_threshold, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @COMPACT_SKIPPED, align 8
  store i64 %36, i64* %3, align 8
  br label %50

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.zone*, %struct.zone** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @zone_watermark_ok(%struct.zone* %41, i32 %42, i64 %43, i32 0, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @COMPACT_PARTIAL, align 8
  store i64 %47, i64* %3, align 8
  br label %50

48:                                               ; preds = %40, %37
  %49 = load i64, i64* @COMPACT_CONTINUE, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %46, %35, %23, %10
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @low_wmark_pages(%struct.zone*) #1

declare dso_local i64 @zone_watermark_ok(%struct.zone*, i32, i64, i32, i32) #1

declare dso_local i32 @fragmentation_index(%struct.zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
