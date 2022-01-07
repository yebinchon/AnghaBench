; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__remove_entry_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_hist.c_hists__remove_entry_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hists = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.hist_entry = type { i32, %struct.TYPE_5__, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*, %struct.hist_entry*, i32)* @hists__remove_entry_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__remove_entry_filter(%struct.hists* %0, %struct.hist_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.hists*, %struct.hists** %4, align 8
  %21 = getelementptr inbounds %struct.hists, %struct.hists* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %31 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hists*, %struct.hists** %4, align 8
  %34 = getelementptr inbounds %struct.hists, %struct.hists* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %29, %19
  %38 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %39 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hists*, %struct.hists** %4, align 8
  %45 = getelementptr inbounds %struct.hists, %struct.hists* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %43
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %52 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hists*, %struct.hists** %4, align 8
  %56 = getelementptr inbounds %struct.hists, %struct.hists* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %54
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.hists*, %struct.hists** %4, align 8
  %66 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %67 = call i32 @hists__calc_col_len(%struct.hists* %65, %struct.hist_entry* %66)
  br label %68

68:                                               ; preds = %37, %18
  ret void
}

declare dso_local i32 @hists__calc_col_len(%struct.hists*, %struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
