; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c___wimax_rf_toggle_radio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-rfkill.c___wimax_rf_toggle_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, i32 (%struct.wimax_dev*, i32)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"(wimax_dev %p state %u)\0A\00", align 1
@WIMAX_RF_OFF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@WIMAX_ST_READY = common dso_local global i32 0, align 4
@WIMAX_ST_RADIO_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"(wimax_dev %p state %u) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wimax_dev*, i32)* @__wimax_rf_toggle_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wimax_rf_toggle_radio(%struct.wimax_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %9 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %8)
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = call i32 (...) @might_sleep()
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %12, i32 %13)
  %15 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %23 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %22, i32 0, i32 1
  %24 = load i32 (%struct.wimax_dev*, i32)*, i32 (%struct.wimax_dev*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.wimax_dev*, i32)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %28 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %27, i32 0, i32 1
  %29 = load i32 (%struct.wimax_dev*, i32)*, i32 (%struct.wimax_dev*, i32)** %28, align 8
  %30 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %29(%struct.wimax_dev* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @WIMAX_RF_OFF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %48 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @WIMAX_RF_ON, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @WIMAX_ST_READY, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @WIMAX_ST_RADIO_OFF, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %7, align 4
  %58 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @__wimax_state_change(%struct.wimax_dev* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %42
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @d_fnend(i32 3, %struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

declare dso_local i32 @__wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
