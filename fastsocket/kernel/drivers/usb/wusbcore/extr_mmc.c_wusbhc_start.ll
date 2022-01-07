; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_mmc.c_wusbhc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_mmc.c_wusbhc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 (%struct.wusbhc*, i32, i32)*, i32*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"cannot establish cluster reservation: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error enabling device connections: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"error starting security in the HC: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot set DNTS parameters: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"error starting wusbch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_start(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %6 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %16 = call i32 @wusbhc_rsv_establish(%struct.wusbhc* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %73

23:                                               ; preds = %1
  %24 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %25 = call i32 @wusbhc_devconnect_start(%struct.wusbhc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %70

32:                                               ; preds = %23
  %33 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %34 = call i32 @wusbhc_sec_start(%struct.wusbhc* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %67

41:                                               ; preds = %32
  %42 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %43 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %42, i32 0, i32 0
  %44 = load i32 (%struct.wusbhc*, i32, i32)*, i32 (%struct.wusbhc*, i32, i32)** %43, align 8
  %45 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %46 = call i32 %44(%struct.wusbhc* %45, i32 0, i32 15)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %66

53:                                               ; preds = %41
  %54 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %55 = call i32 @wusbhc_mmc_start(%struct.wusbhc* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %75

63:                                               ; preds = %58
  %64 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %65 = call i32 @wusbhc_sec_stop(%struct.wusbhc* %64)
  br label %66

66:                                               ; preds = %63, %49
  br label %67

67:                                               ; preds = %66, %37
  %68 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %69 = call i32 @wusbhc_devconnect_stop(%struct.wusbhc* %68)
  br label %70

70:                                               ; preds = %67, %28
  %71 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %72 = call i32 @wusbhc_rsv_terminate(%struct.wusbhc* %71)
  br label %73

73:                                               ; preds = %70, %19
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %62
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wusbhc_rsv_establish(%struct.wusbhc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wusbhc_devconnect_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_mmc_start(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_sec_stop(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_devconnect_stop(%struct.wusbhc*) #1

declare dso_local i32 @wusbhc_rsv_terminate(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
