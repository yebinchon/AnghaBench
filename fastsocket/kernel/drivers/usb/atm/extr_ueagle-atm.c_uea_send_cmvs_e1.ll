; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_send_cmvs_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_send_cmvs_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32 }
%struct.uea_cmvs_v1 = type { i32, i32, i32 }
%struct.uea_cmvs_v2 = type { i32, i32, i32 }

@E1_SA_CNTL = common dso_local global i32 0, align 4
@E1_SA_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ATU-R firmware version : %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"use deprecated cmvs version, please update your firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bad cmvs version %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Entering in R-ACT-REQ state\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"modem started, waiting synchronization...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_send_cmvs_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_send_cmvs_e1(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uea_cmvs_v1*, align 8
  %11 = alloca %struct.uea_cmvs_v2*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store i32 1, i32* %9, align 4
  %12 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %13 = load i32, i32* @E1_SA_CNTL, align 4
  %14 = call i32 @uea_write_cmv_e1(%struct.uea_softc* %12, i32 %13, i32 0, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %21 = load i32, i32* @E1_SA_INFO, align 4
  %22 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @uea_read_cmv_e1(%struct.uea_softc* %20, i32 %21, i32 10, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %147

31:                                               ; preds = %19
  %32 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %33 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %32)
  %34 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @uea_info(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %41 = call i32 @request_cmvs(%struct.uea_softc* %40, i8** %7, %struct.firmware** %8, i32* %9)
  store i32 %41, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %147

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %88

49:                                               ; preds = %46
  %50 = load i8*, i8** %7, align 8
  %51 = bitcast i8* %50 to %struct.uea_cmvs_v1*
  store %struct.uea_cmvs_v1* %51, %struct.uea_cmvs_v1** %10, align 8
  %52 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %53 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %52)
  %54 = call i32 @uea_warn(i32 %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %84, %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %61 = load %struct.uea_cmvs_v1*, %struct.uea_cmvs_v1** %10, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %61, i64 %63
  %65 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %64, i32 0, i32 2
  %66 = call i32 @get_unaligned_le32(i32* %65)
  %67 = load %struct.uea_cmvs_v1*, %struct.uea_cmvs_v1** %10, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %67, i64 %69
  %71 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %70, i32 0, i32 1
  %72 = call i32 @get_unaligned_le16(i32* %71)
  %73 = load %struct.uea_cmvs_v1*, %struct.uea_cmvs_v1** %10, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %73, i64 %75
  %77 = getelementptr inbounds %struct.uea_cmvs_v1, %struct.uea_cmvs_v1* %76, i32 0, i32 0
  %78 = call i32 @get_unaligned_le32(i32* %77)
  %79 = call i32 @uea_write_cmv_e1(%struct.uea_softc* %60, i32 %66, i32 %72, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %59
  br label %143

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %55

87:                                               ; preds = %55
  br label %133

88:                                               ; preds = %46
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %127

91:                                               ; preds = %88
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to %struct.uea_cmvs_v2*
  store %struct.uea_cmvs_v2* %93, %struct.uea_cmvs_v2** %11, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %123, %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %94
  %99 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %100 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %11, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %100, i64 %102
  %104 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %103, i32 0, i32 2
  %105 = call i32 @get_unaligned_le32(i32* %104)
  %106 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %11, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %106, i64 %108
  %110 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %109, i32 0, i32 1
  %111 = call i32 @get_unaligned_le32(i32* %110)
  %112 = load %struct.uea_cmvs_v2*, %struct.uea_cmvs_v2** %11, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %112, i64 %114
  %116 = getelementptr inbounds %struct.uea_cmvs_v2, %struct.uea_cmvs_v2* %115, i32 0, i32 0
  %117 = call i32 @get_unaligned_le32(i32* %116)
  %118 = call i32 @uea_write_cmv_e1(%struct.uea_softc* %99, i32 %105, i32 %111, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %98
  br label %143

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %94

126:                                              ; preds = %94
  br label %132

127:                                              ; preds = %88
  %128 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %129 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %128)
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @uea_err(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %143

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %87
  %134 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %135 = load i32, i32* @E1_SA_CNTL, align 4
  %136 = call i32 @uea_write_cmv_e1(%struct.uea_softc* %134, i32 %135, i32 0, i32 2)
  store i32 %136, i32* %5, align 4
  %137 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %138 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %137)
  %139 = call i32 @uea_vdbg(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %141 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %140)
  %142 = call i32 (i32, i8*, ...) @uea_info(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %143

143:                                              ; preds = %133, %127, %121, %82
  %144 = load %struct.firmware*, %struct.firmware** %8, align 8
  %145 = call i32 @release_firmware(%struct.firmware* %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %44, %29, %17
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @uea_write_cmv_e1(%struct.uea_softc*, i32, i32, i32) #1

declare dso_local i32 @uea_read_cmv_e1(%struct.uea_softc*, i32, i32, i32*) #1

declare dso_local i32 @uea_info(i32, i8*, ...) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @request_cmvs(%struct.uea_softc*, i8**, %struct.firmware**, i32*) #1

declare dso_local i32 @uea_warn(i32, i8*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @uea_err(i32, i8*, i32) #1

declare dso_local i32 @uea_vdbg(i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
