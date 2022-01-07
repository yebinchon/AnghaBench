; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_hists__process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-diff.c_hists__process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { i32 }

@show_baseline_only = common dso_local global i64 0, align 8
@sort_compute = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*, %struct.hists*)* @hists__process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__process(%struct.hists* %0, %struct.hists* %1) #0 {
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.hists*, align 8
  store %struct.hists* %0, %struct.hists** %3, align 8
  store %struct.hists* %1, %struct.hists** %4, align 8
  %5 = load %struct.hists*, %struct.hists** %4, align 8
  %6 = load %struct.hists*, %struct.hists** %3, align 8
  %7 = call i32 @hists__match(%struct.hists* %5, %struct.hists* %6)
  %8 = load i64, i64* @show_baseline_only, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.hists*, %struct.hists** %4, align 8
  %12 = call i32 @hists__baseline_only(%struct.hists* %11)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.hists*, %struct.hists** %4, align 8
  %15 = load %struct.hists*, %struct.hists** %3, align 8
  %16 = call i32 @hists__link(%struct.hists* %14, %struct.hists* %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* @sort_compute, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.hists*, %struct.hists** %4, align 8
  %22 = call i32 @hists__precompute(%struct.hists* %21)
  %23 = load %struct.hists*, %struct.hists** %4, align 8
  %24 = call i32 @hists__compute_resort(%struct.hists* %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.hists*, %struct.hists** %4, align 8
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @hists__fprintf(%struct.hists* %26, i32 1, i32 0, i32 0, i32 %27)
  ret void
}

declare dso_local i32 @hists__match(%struct.hists*, %struct.hists*) #1

declare dso_local i32 @hists__baseline_only(%struct.hists*) #1

declare dso_local i32 @hists__link(%struct.hists*, %struct.hists*) #1

declare dso_local i32 @hists__precompute(%struct.hists*) #1

declare dso_local i32 @hists__compute_resort(%struct.hists*) #1

declare dso_local i32 @hists__fprintf(%struct.hists*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
