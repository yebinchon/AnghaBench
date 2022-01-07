; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_event.c_gpio_event_call_all_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_event.c_gpio_event_call_all_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_event = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.gpio_event_info** }
%struct.gpio_event_info = type { i32 (i32, %struct.gpio_event_info*, i32*, i32)* }

@GPIO_EVENT_FUNC_INIT = common dso_local global i32 0, align 4
@GPIO_EVENT_FUNC_RESUME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"gpio_event_probe: Incomplete pdata, no function\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"gpio_event_probe: function failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_event*, i32)* @gpio_event_call_all_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_event_call_all_func(%struct.gpio_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_event_info**, align 8
  store %struct.gpio_event* %0, %struct.gpio_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GPIO_EVENT_FUNC_INIT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GPIO_EVENT_FUNC_RESUME, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12, %2
  %17 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %20, align 8
  store %struct.gpio_event_info** %21, %struct.gpio_event_info*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %63, %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %25 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %22
  %31 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %32 = load %struct.gpio_event_info*, %struct.gpio_event_info** %31, align 8
  %33 = getelementptr inbounds %struct.gpio_event_info, %struct.gpio_event_info* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.gpio_event_info*, i32*, i32)*, i32 (i32, %struct.gpio_event_info*, i32*, i32)** %33, align 8
  %35 = icmp eq i32 (i32, %struct.gpio_event_info*, i32*, i32)* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %110

40:                                               ; preds = %30
  %41 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %42 = load %struct.gpio_event_info*, %struct.gpio_event_info** %41, align 8
  %43 = getelementptr inbounds %struct.gpio_event_info, %struct.gpio_event_info* %42, i32 0, i32 0
  %44 = load i32 (i32, %struct.gpio_event_info*, i32*, i32)*, i32 (i32, %struct.gpio_event_info*, i32*, i32)** %43, align 8
  %45 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %46 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %49 = load %struct.gpio_event_info*, %struct.gpio_event_info** %48, align 8
  %50 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %51 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %5, align 4
  %57 = call i32 %44(i32 %47, %struct.gpio_event_info* %49, i32* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %109

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %67 = getelementptr inbounds %struct.gpio_event_info*, %struct.gpio_event_info** %66, i32 1
  store %struct.gpio_event_info** %67, %struct.gpio_event_info*** %8, align 8
  br label %22

68:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %113

69:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %70 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %71 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %6, align 4
  %75 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %76 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.gpio_event_info*, %struct.gpio_event_info** %79, i64 %81
  store %struct.gpio_event_info** %82, %struct.gpio_event_info*** %8, align 8
  br label %83

83:                                               ; preds = %110, %69
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %6, align 4
  %89 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %90 = getelementptr inbounds %struct.gpio_event_info*, %struct.gpio_event_info** %89, i32 -1
  store %struct.gpio_event_info** %90, %struct.gpio_event_info*** %8, align 8
  %91 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %92 = load %struct.gpio_event_info*, %struct.gpio_event_info** %91, align 8
  %93 = getelementptr inbounds %struct.gpio_event_info, %struct.gpio_event_info* %92, i32 0, i32 0
  %94 = load i32 (i32, %struct.gpio_event_info*, i32*, i32)*, i32 (i32, %struct.gpio_event_info*, i32*, i32)** %93, align 8
  %95 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %96 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.gpio_event_info**, %struct.gpio_event_info*** %8, align 8
  %99 = load %struct.gpio_event_info*, %struct.gpio_event_info** %98, align 8
  %100 = load %struct.gpio_event*, %struct.gpio_event** %4, align 8
  %101 = getelementptr inbounds %struct.gpio_event, %struct.gpio_event* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, -2
  %108 = call i32 %94(i32 %97, %struct.gpio_event_info* %99, i32* %105, i32 %107)
  br label %109

109:                                              ; preds = %86, %60
  br label %110

110:                                              ; preds = %109, %36
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %68
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
