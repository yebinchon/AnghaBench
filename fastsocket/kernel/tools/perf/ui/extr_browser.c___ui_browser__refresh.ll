; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c___ui_browser__refresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c___ui_browser__refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, {}*, i64, i32, i64, i64, i32 }

@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_browser*)* @__ui_browser__refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ui_browser__refresh(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %5 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %6 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %9 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %8, i32 0, i32 1
  %10 = bitcast {}** %9 to i32 (%struct.ui_browser*)**
  %11 = load i32 (%struct.ui_browser*)*, i32 (%struct.ui_browser*)** %10, align 8
  %12 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %13 = call i32 %11(%struct.ui_browser* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  %16 = call i32 @ui_browser__set_color(%struct.ui_browser* %14, i32 %15)
  %17 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %23 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %1
  %27 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %28 = call i32 @ui_browser__scrollbar_set(%struct.ui_browser* %27)
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %34 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %40 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %43 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @SLsmg_fill_region(i64 %38, i32 %41, i64 %47, i32 %48, i8 signext 32)
  ret i32 0
}

declare dso_local i32 @ui_browser__set_color(%struct.ui_browser*, i32) #1

declare dso_local i32 @ui_browser__scrollbar_set(%struct.ui_browser*) #1

declare dso_local i32 @SLsmg_fill_region(i64, i32, i64, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
