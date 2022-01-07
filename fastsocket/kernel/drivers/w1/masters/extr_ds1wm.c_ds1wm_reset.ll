; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_ds1wm.c_ds1wm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { %struct.TYPE_2__*, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@reset_done = common dso_local global i32 0, align 4
@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_INTEN_EPD = common dso_local global i32 0, align 4
@DS1WM_INTEN_IAS = common dso_local global i32 0, align 4
@DS1WM_CMD = common dso_local global i32 0, align 4
@DS1WM_CMD_1W_RESET = common dso_local global i32 0, align 4
@DS1WM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@DS1WM_INTEN_ERBF = common dso_local global i32 0, align 4
@DS1WM_INTEN_ETMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"reset: no devices found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*)* @ds1wm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_reset(%struct.ds1wm_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds1wm_data*, align 8
  %4 = alloca i64, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %3, align 8
  %5 = load i32, i32* @reset_done, align 4
  %6 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %5)
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 3
  store i32* @reset_done, i32** %8, align 8
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %10 = load i32, i32* @DS1WM_INT_EN, align 4
  %11 = load i32, i32* @DS1WM_INTEN_EPD, align 4
  %12 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %13 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @DS1WM_INTEN_IAS, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %11, %20
  %22 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %9, i32 %10, i32 %21)
  %23 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %24 = load i32, i32* @DS1WM_CMD, align 4
  %25 = load i32, i32* @DS1WM_CMD_1W_RESET, align 4
  %26 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @DS1WM_TIMEOUT, align 4
  %28 = call i64 @wait_for_completion_timeout(i32* @reset_done, i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %30 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %19
  %34 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %35 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

39:                                               ; preds = %19
  %40 = call i32 @msleep(i32 1)
  %41 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %42 = load i32, i32* @DS1WM_INT_EN, align 4
  %43 = load i32, i32* @DS1WM_INTEN_ERBF, align 4
  %44 = load i32, i32* @DS1WM_INTEN_ETMT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DS1WM_INTEN_EPD, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %49 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @DS1WM_INTEN_IAS, align 4
  br label %55

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = or i32 %47, %56
  %58 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %41, i32 %42, i32 %57)
  %59 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %60 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %65 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

69:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %63, %33
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
