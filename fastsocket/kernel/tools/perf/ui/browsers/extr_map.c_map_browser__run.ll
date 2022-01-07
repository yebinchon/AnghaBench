; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_map.c_map_browser__run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/browsers/extr_map.c_map_browser__run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_browser = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Press <- or ESC to exit, %s / to search\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"restart with -v to use\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_browser*)* @map_browser__run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_browser__run(%struct.map_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.map_browser*, align 8
  %4 = alloca i32, align 4
  store %struct.map_browser* %0, %struct.map_browser** %3, align 8
  %5 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %6 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %5, i32 0, i32 0
  %7 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %8 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @verbose, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i64 @ui_browser__show(i32* %6, i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %35
  %23 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %24 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %23, i32 0, i32 0
  %25 = call i32 @ui_browser__run(i32* %24, i32 0)
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @verbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %33 = call i32 @map_browser__search(%struct.map_browser* %32)
  br label %35

34:                                               ; preds = %28, %22
  br label %36

35:                                               ; preds = %31
  br label %22

36:                                               ; preds = %34
  %37 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %38 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %37, i32 0, i32 0
  %39 = call i32 @ui_browser__hide(i32* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @ui_browser__show(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ui_browser__run(i32*, i32) #1

declare dso_local i32 @map_browser__search(%struct.map_browser*) #1

declare dso_local i32 @ui_browser__hide(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
