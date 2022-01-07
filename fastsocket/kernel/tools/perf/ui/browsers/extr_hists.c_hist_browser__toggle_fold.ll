; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__toggle_fold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_hists.c_hist_browser__toggle_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.hist_entry*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hist_entry = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*)* @hist_browser__toggle_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__toggle_fold(%struct.hist_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_browser*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %3, align 8
  %5 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %6 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @map_symbol__toggle_fold(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %1
  %11 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %12 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %11, i32 0, i32 2
  %13 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  store %struct.hist_entry* %13, %struct.hist_entry** %4, align 8
  %14 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %15 = call i32 @hist_entry__init_have_children(%struct.hist_entry* %14)
  %16 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %18
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %10
  %33 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %34 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %33, i32 0, i32 1
  %35 = call i64 @callchain__count_rows(i32* %34)
  %36 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %37 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %41

38:                                               ; preds = %10
  %39 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %40 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %43 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %46 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %44
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %54 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hist_browser*, %struct.hist_browser** %3, align 8
  %59 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  store i32 1, i32* %2, align 4
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @map_symbol__toggle_fold(i32) #1

declare dso_local i32 @hist_entry__init_have_children(%struct.hist_entry*) #1

declare dso_local i64 @callchain__count_rows(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
