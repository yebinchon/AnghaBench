; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_finished.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.compact_control = type { i64, i64, i32, i64 }

@current = common dso_local global i32 0, align 4
@COMPACT_PARTIAL = common dso_local global i32 0, align 4
@COMPACT_COMPLETE = common dso_local global i32 0, align 4
@COMPACT_CONTINUE = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, %struct.compact_control*)* @compact_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_finished(%struct.zone* %0, %struct.compact_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zone*, align 8
  %5 = alloca %struct.compact_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store %struct.compact_control* %1, %struct.compact_control** %5, align 8
  %8 = load i32, i32* @current, align 4
  %9 = call i64 @fatal_signal_pending(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @COMPACT_PARTIAL, align 4
  store i32 %12, i32* %3, align 4
  br label %102

13:                                               ; preds = %2
  %14 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %15 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %18 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = call i32 (...) @current_is_kswapd()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.zone*, %struct.zone** %4, align 8
  %26 = call i32 @__reset_isolation_suitable(%struct.zone* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @COMPACT_COMPLETE, align 4
  store i32 %28, i32* %3, align 4
  br label %102

29:                                               ; preds = %13
  %30 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %31 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @COMPACT_CONTINUE, align 4
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %29
  %37 = load %struct.zone*, %struct.zone** %4, align 8
  %38 = call i64 @low_wmark_pages(%struct.zone* %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %40 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.zone*, %struct.zone** %4, align 8
  %47 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %48 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @zone_watermark_ok(%struct.zone* %46, i32 %49, i64 %50, i32 0, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* @COMPACT_CONTINUE, align 4
  store i32 %54, i32* %3, align 4
  br label %102

55:                                               ; preds = %36
  %56 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %57 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %97, %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MAX_ORDER, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.zone*, %struct.zone** %4, align 8
  %65 = getelementptr inbounds %struct.zone, %struct.zone* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.compact_control*, %struct.compact_control** %5, align 8
  %73 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* @COMPACT_PARTIAL, align 4
  store i32 %79, i32* %3, align 4
  br label %102

80:                                               ; preds = %63
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @pageblock_order, align 4
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct.zone*, %struct.zone** %4, align 8
  %86 = getelementptr inbounds %struct.zone, %struct.zone* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @COMPACT_PARTIAL, align 4
  store i32 %95, i32* %3, align 4
  br label %102

96:                                               ; preds = %84, %80
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %59

100:                                              ; preds = %59
  %101 = load i32, i32* @COMPACT_CONTINUE, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %94, %78, %53, %34, %27, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @current_is_kswapd(...) #1

declare dso_local i32 @__reset_isolation_suitable(%struct.zone*) #1

declare dso_local i64 @low_wmark_pages(%struct.zone*) #1

declare dso_local i32 @zone_watermark_ok(%struct.zone*, i32, i64, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
