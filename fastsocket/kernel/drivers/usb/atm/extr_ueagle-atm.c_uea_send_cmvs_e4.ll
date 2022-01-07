; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_send_cmvs_e4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_send_cmvs_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }
%struct.uea_cmvs_v2 = type { i32, i32, i32, i32 }

@E4_SA_CNTL = common dso_local global i32 0, align 4
@E4_SA_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ATU-R firmware version : %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bad cmvs version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Entering in R-ACT-REQ state\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"modem started, waiting synchronization...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_send_cmvs_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_send_cmvs_e4(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uea_cmvs_v2*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store i32 2, i32* %9, align 4
  %11 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %12 = load i32, i32* @E4_SA_CNTL, align 4
  %13 = call i32 @uea_write_cmv_e4(%struct.uea_softc* %11, i32 1, i32 %12, i32 0, i32 0, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %20 = load i32, i32* @E4_SA_INFO, align 4
  %21 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @uea_read_cmv_e4(%struct.uea_softc* %19, i32 2, i32 %20, i32 55, i32 0, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %109

30:                                               ; preds = %18
  %31 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %32 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %31)
  %33 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @uea_info(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %40 = call i32 @request_cmvs(%struct.uea_softc* %39, i8** %7, %struct.firmware** %8, i32* %9)
  store i32 %40, i32* %6, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %109

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %90

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to %struct.uea_cmvs_v2*
  store %struct.uea_cmvs_v2* %50, %struct.uea_cmvs_v2** %10, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %86, %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %57 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %10, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %57, i64 %59
  %61 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %60, i32 0, i32 3
  %62 = call i32 @get_unaligned_le32(i32* %61)
  %63 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %63, i64 %65
  %67 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %66, i32 0, i32 2
  %68 = call i32 @get_unaligned_le32(i32* %67)
  %69 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %10, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %69, i64 %71
  %73 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %72, i32 0, i32 1
  %74 = call i32 @get_unaligned_le32(i32* %73)
  %75 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %10, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %75, i64 %77
  %79 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %78, i32 0, i32 0
  %80 = call i32 @get_unaligned_le32(i32* %79)
  %81 = call i32 @uea_write_cmv_e4(%struct.uea_softc* %56, i32 1, i32 %62, i32 %68, i32 %74, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %55
  br label %105

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %51

89:                                               ; preds = %51
  br label %95

90:                                               ; preds = %45
  %91 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %92 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @uea_err(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %105

95:                                               ; preds = %89
  %96 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %97 = load i32, i32* @E4_SA_CNTL, align 4
  %98 = call i32 @uea_write_cmv_e4(%struct.uea_softc* %96, i32 1, i32 %97, i32 0, i32 0, i32 2)
  store i32 %98, i32* %5, align 4
  %99 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %100 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %99)
  %101 = call i32 @uea_vdbg(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %103 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %102)
  %104 = call i32 (i32, i8*, ...) @uea_info(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %95, %90, %84
  %106 = load %struct.firmware*, %struct.firmware** %8, align 8
  %107 = call i32 @release_firmware(%struct.firmware* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %43, %28, %16
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @uea_write_cmv_e4(%struct.uea_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uea_read_cmv_e4(%struct.uea_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_info(i32, i8*, ...) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @request_cmvs(%struct.uea_softc*, i8**, %struct.firmware**, i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @uea_err(i32, i8*, i32) #1

declare dso_local i32 @uea_vdbg(i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
