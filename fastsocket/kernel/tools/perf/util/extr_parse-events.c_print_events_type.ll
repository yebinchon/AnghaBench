; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_events_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_events_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_TYPE_SOFTWARE = common dso_local global i64 0, align 8
@event_symbols_sw = common dso_local global i32 0, align 4
@PERF_COUNT_SW_MAX = common dso_local global i32 0, align 4
@event_symbols_hw = common dso_local global i32 0, align 4
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_events_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @PERF_TYPE_SOFTWARE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @event_symbols_sw, align 4
  %9 = load i32, i32* @PERF_COUNT_SW_MAX, align 4
  %10 = call i32 @__print_events_type(i64 %7, i32 %8, i32 %9)
  br label %16

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* @event_symbols_hw, align 4
  %14 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %15 = call i32 @__print_events_type(i64 %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %6
  ret void
}

declare dso_local i32 @__print_events_type(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
