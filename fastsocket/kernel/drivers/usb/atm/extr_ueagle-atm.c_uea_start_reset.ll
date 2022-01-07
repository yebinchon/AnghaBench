; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_start_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_start_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32, {}*, i64, i32, i32, i64, i64, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(re)booting started\0A\00", align 1
@signal = common dso_local global i32 0, align 4
@ATM_PHY_SIG_LOST = common dso_local global i32 0, align 4
@UEA_SET_MODE = common dso_local global i32 0, align 4
@UEA_LOOPBACK_ON = common dso_local global i32 0, align 4
@UEA_BOOT_IDMA = common dso_local global i32 0, align 4
@UEA_START_RESET = common dso_local global i32 0, align 4
@UEA_END_RESET = common dso_local global i32 0, align 4
@EAGLE_IV = common dso_local global i64 0, align 8
@UEA_SET_2183_DATA = common dso_local global i32 0, align 4
@UEA_MPTX_MAILBOX = common dso_local global i32 0, align 4
@UEA_MPRX_MAILBOX = common dso_local global i32 0, align 4
@UEA_SWAP_MAILBOX = common dso_local global i32 0, align 4
@E4_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E4_MODEMREADY = common dso_local global i32 0, align 4
@E1_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E1_MODEMREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Ready CMV received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_start_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_start_reset(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %7 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %6)
  %8 = call i32 @uea_enters(i32 %7)
  %9 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %10 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %9)
  %11 = call i32 @uea_info(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @signal, align 4
  %17 = load i32, i32* @ATM_PHY_SIG_LOST, align 4
  %18 = call i32 @UPDATE_ATM_STAT(i32 %16, i32 %17)
  %19 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %19, i32 0, i32 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %23 = load i32, i32* @UEA_SET_MODE, align 4
  %24 = load i32, i32* @UEA_LOOPBACK_ON, align 4
  %25 = call i32 @uea_request(%struct.uea_softc* %22, i32 %23, i32 %24, i32 0, i32* null)
  %26 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %27 = load i32, i32* @UEA_SET_MODE, align 4
  %28 = load i32, i32* @UEA_BOOT_IDMA, align 4
  %29 = call i32 @uea_request(%struct.uea_softc* %26, i32 %27, i32 %28, i32 0, i32* null)
  %30 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %31 = load i32, i32* @UEA_SET_MODE, align 4
  %32 = load i32, i32* @UEA_START_RESET, align 4
  %33 = call i32 @uea_request(%struct.uea_softc* %30, i32 %31, i32 %32, i32 0, i32* null)
  %34 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %35 = call i32 @msecs_to_jiffies(i32 100)
  %36 = call i32 @uea_wait(%struct.uea_softc* %34, i32 0, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %132

41:                                               ; preds = %1
  %42 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %43 = load i32, i32* @UEA_SET_MODE, align 4
  %44 = load i32, i32* @UEA_END_RESET, align 4
  %45 = call i32 @uea_request(%struct.uea_softc* %42, i32 %43, i32 %44, i32 0, i32* null)
  %46 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %47 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %46)
  %48 = load i64, i64* @EAGLE_IV, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %41
  %51 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %52 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %53 = load i32, i32* @UEA_MPTX_MAILBOX, align 4
  %54 = call i32 @uea_request(%struct.uea_softc* %51, i32 %52, i32 %53, i32 2, i32* %4)
  %55 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %56 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %57 = load i32, i32* @UEA_MPRX_MAILBOX, align 4
  %58 = call i32 @uea_request(%struct.uea_softc* %55, i32 %56, i32 %57, i32 2, i32* %4)
  %59 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %60 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %61 = load i32, i32* @UEA_SWAP_MAILBOX, align 4
  %62 = call i32 @uea_request(%struct.uea_softc* %59, i32 %60, i32 %61, i32 2, i32* %4)
  br label %63

63:                                               ; preds = %50, %41
  %64 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %65 = call i32 @msecs_to_jiffies(i32 1000)
  %66 = call i32 @uea_wait(%struct.uea_softc* %64, i32 0, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %132

71:                                               ; preds = %63
  %72 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %73 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %72)
  %74 = load i64, i64* @EAGLE_IV, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i32, i32* @E4_ADSLDIRECTIVE, align 4
  %78 = load i32, i32* @E4_MODEMREADY, align 4
  %79 = call i32 @E4_MAKEFUNCTION(i32 %77, i32 %78, i32 1)
  %80 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %81 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  br label %92

84:                                               ; preds = %71
  %85 = load i32, i32* @E1_ADSLDIRECTIVE, align 4
  %86 = load i32, i32* @E1_MODEMREADY, align 4
  %87 = call i32 @E1_MAKEFUNCTION(i32 %85, i32 %86)
  %88 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %89 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  br label %92

92:                                               ; preds = %84, %76
  %93 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %94 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %96 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %98 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %100 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %103 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %102, i32 0, i32 3
  %104 = call i32 @queue_work(i32 %101, i32* %103)
  %105 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %106 = call i32 @wait_cmv_ack(%struct.uea_softc* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %92
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %132

111:                                              ; preds = %92
  %112 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %113 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %112)
  %114 = call i32 @uea_vdbg(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %116 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %115, i32 0, i32 1
  %117 = bitcast {}** %116 to i32 (%struct.uea_softc*)**
  %118 = load i32 (%struct.uea_softc*)*, i32 (%struct.uea_softc*)** %117, align 8
  %119 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %120 = call i32 %118(%struct.uea_softc* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %132

125:                                              ; preds = %111
  %126 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %127 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %129 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %128)
  %130 = call i32 @uea_leaves(i32 %129)
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %125, %123, %109, %69, %39
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_info(i32, i8*) #1

declare dso_local i32 @UPDATE_ATM_STAT(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_wait(%struct.uea_softc*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @E4_MAKEFUNCTION(i32, i32, i32) #1

declare dso_local i32 @E1_MAKEFUNCTION(i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_cmv_ack(%struct.uea_softc*) #1

declare dso_local i32 @uea_vdbg(i32, i8*) #1

declare dso_local i32 @uea_leaves(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
