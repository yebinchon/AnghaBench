; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__argv_refresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__argv_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32 (%struct.ui_browser*, i8**, i32)*, i32 (%struct.ui_browser*, i8*)*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__argv_refresh(%struct.ui_browser* %0) #0 {
  %2 = alloca %struct.ui_browser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store %struct.ui_browser* %0, %struct.ui_browser** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %7 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %10 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %18 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %17, i32 0, i32 5
  store i32* %16, i32** %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %21 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to i8**
  store i8** %23, i8*** %5, align 8
  br label %24

24:                                               ; preds = %63, %19
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %27 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %32 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %31, i32 0, i32 4
  %33 = load i32 (%struct.ui_browser*, i8*)*, i32 (%struct.ui_browser*, i8*)** %32, align 8
  %34 = icmp ne i32 (%struct.ui_browser*, i8*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %37 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %36, i32 0, i32 4
  %38 = load i32 (%struct.ui_browser*, i8*)*, i32 (%struct.ui_browser*, i8*)** %37, align 8
  %39 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 %38(%struct.ui_browser* %39, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ui_browser__gotorc(%struct.ui_browser* %45, i32 %46, i32 0)
  %48 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %49 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %48, i32 0, i32 3
  %50 = load i32 (%struct.ui_browser*, i8**, i32)*, i32 (%struct.ui_browser*, i8**, i32)** %49, align 8
  %51 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 %50(%struct.ui_browser* %51, i8** %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load %struct.ui_browser*, %struct.ui_browser** %2, align 8
  %58 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %68

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %5, align 8
  br label %24

68:                                               ; preds = %61, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ui_browser__gotorc(%struct.ui_browser*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
