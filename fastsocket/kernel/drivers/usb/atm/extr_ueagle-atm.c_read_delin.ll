; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_read_delin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_read_delin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uea_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GOOD\00", align 1
@uea_mutex = common dso_local global i32 0, align 4
@EAGLE_IV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LOSS\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @read_delin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_delin(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uea_softc*, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = call i32 @mutex_lock(i32* @uea_mutex)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.uea_softc* @dev_to_uea(%struct.device* %13)
  store %struct.uea_softc* %14, %struct.uea_softc** %8, align 8
  %15 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %16 = icmp ne %struct.uea_softc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %67

18:                                               ; preds = %3
  %19 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %20 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %19)
  %21 = load i64, i64* @EAGLE_IV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %25 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 16384
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %34 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %31
  br label %63

43:                                               ; preds = %18
  %44 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %45 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3072
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.uea_softc*, %struct.uea_softc** %8, align 8
  %54 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 48
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %42
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %17
  %68 = call i32 @mutex_unlock(i32* @uea_mutex)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uea_softc* @dev_to_uea(%struct.device*) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
