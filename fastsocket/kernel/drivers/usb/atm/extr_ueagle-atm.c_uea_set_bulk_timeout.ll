; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_set_bulk_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_set_bulk_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADI930 = common dso_local global i64 0, align 8
@altsetting = common dso_local global i64* null, align 8
@UEA_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"setting new timeout %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" failed\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, i32)* @uea_set_bulk_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_set_bulk_timeout(%struct.uea_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %7)
  %9 = load i64, i64* @ADI930, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load i64*, i64** @altsetting, align 8
  %13 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %11, %2
  br label %45

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 1048576
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %34 = load i32, i32* @UEA_SET_TIMEOUT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @uea_request(%struct.uea_softc* %33, i32 %34, i32 %35, i32 0, i32* null)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %38 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @uea_info(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %43)
  br label %45

45:                                               ; preds = %28, %27
  ret void
}

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
