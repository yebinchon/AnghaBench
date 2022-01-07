; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__scrollbar_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__scrollbar_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32, i32 }

@SLSMG_DIAMOND_CHAR = common dso_local global i32 0, align 4
@SLSMG_CKBRD_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_browser*)* @ui_browser__scrollbar_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_browser__scrollbar_set(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  %8 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %9 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %12 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %19 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %24 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %27 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %25, %29
  %31 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %32 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sdiv i32 %30, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %22, %1
  %37 = call i32 @SLsmg_set_char_set(i32 1)
  br label %38

38:                                               ; preds = %55, %36
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ui_browser__gotorc(%struct.ui_browser* %43, i32 %44, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @SLSMG_DIAMOND_CHAR, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @SLSMG_CKBRD_CHAR, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @SLsmg_write_char(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %38

60:                                               ; preds = %38
  %61 = call i32 @SLsmg_set_char_set(i32 0)
  ret void
}

declare dso_local i32 @SLsmg_set_char_set(i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
