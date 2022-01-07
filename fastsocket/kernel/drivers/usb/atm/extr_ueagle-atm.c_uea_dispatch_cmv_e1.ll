; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_dispatch_cmv_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_dispatch_cmv_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cmv_dsc_e1 }
%struct.cmv_dsc_e1 = type { i64, i64, i64, i64 }
%struct.intr_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.cmv_e1 }
%struct.cmv_e1 = type { i64, i64, i8*, i32, i8*, i32, i8* }

@E1_PREAMBLE = common dso_local global i64 0, align 8
@E1_MODEMTOHOST = common dso_local global i64 0, align 8
@ADI930 = common dso_local global i64 0, align 8
@E1_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E1_MODEMREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"unexpected cmv received, Function : %d, Subfunction : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid cmv received, wPreamble %d, bDirection %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, %struct.intr_pkt*)* @uea_dispatch_cmv_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_dispatch_cmv_e1(%struct.uea_softc* %0, %struct.intr_pkt* %1) #0 {
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca %struct.intr_pkt*, align 8
  %5 = alloca %struct.cmv_dsc_e1*, align 8
  %6 = alloca %struct.cmv_e1*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store %struct.intr_pkt* %1, %struct.intr_pkt** %4, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.cmv_dsc_e1* %9, %struct.cmv_dsc_e1** %5, align 8
  %10 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %11 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.cmv_e1* %14, %struct.cmv_e1** %6, align 8
  %15 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %16 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %15)
  %17 = call i32 @uea_enters(i32 %16)
  %18 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %19 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @le16_to_cpu(i8* %20)
  %22 = load i64, i64* @E1_PREAMBLE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %151

25:                                               ; preds = %2
  %26 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %27 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @E1_MODEMTOHOST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %151

32:                                               ; preds = %25
  %33 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %34 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %37 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %41)
  %43 = load i64, i64* @ADI930, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %47 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @E1_MAKEFUNCTION(i32 2, i32 2)
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %53 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @cpu_to_le16(i64 %54)
  %56 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %57 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %59 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %62 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %61, i32 0, i32 5
  %63 = call i32 @put_unaligned_le32(i64 %60, i32* %62)
  %64 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %65 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @cpu_to_le16(i64 %66)
  %68 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %69 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %71

70:                                               ; preds = %45, %40
  br label %136

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %74 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @E1_ADSLDIRECTIVE, align 4
  %77 = load i32, i32* @E1_MODEMREADY, align 4
  %78 = call i64 @E1_MAKEFUNCTION(i32 %76, i32 %77)
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %82 = call i32 @wake_up_cmv_ack(%struct.uea_softc* %81)
  %83 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %84 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %83)
  %85 = call i32 @uea_leaves(i32 %84)
  br label %165

86:                                               ; preds = %72
  %87 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %88 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @le16_to_cpu(i8* %89)
  %91 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %92 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %112, label %95

95:                                               ; preds = %86
  %96 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %97 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %96, i32 0, i32 5
  %98 = call i64 @get_unaligned_le32(i32* %97)
  %99 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %100 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %95
  %104 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %105 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @le16_to_cpu(i8* %106)
  %108 = load %struct.cmv_dsc_e1*, %struct.cmv_dsc_e1** %5, align 8
  %109 = getelementptr inbounds %struct.cmv_dsc_e1, %struct.cmv_dsc_e1* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103, %95, %86
  br label %136

113:                                              ; preds = %103
  %114 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %115 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %114, i32 0, i32 3
  %116 = call i64 @get_unaligned_le32(i32* %115)
  %117 = trunc i64 %116 to i32
  %118 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %119 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %121 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 16
  %124 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %125 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 16
  %128 = or i32 %123, %127
  %129 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %130 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %132 = call i32 @wake_up_cmv_ack(%struct.uea_softc* %131)
  %133 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %134 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %133)
  %135 = call i32 @uea_leaves(i32 %134)
  br label %165

136:                                              ; preds = %112, %70
  %137 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %138 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %137)
  %139 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %140 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @E1_FUNCTION_TYPE(i64 %141)
  %143 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %144 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @E1_FUNCTION_SUBTYPE(i64 %145)
  %147 = call i32 @uea_err(i32 %138, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %142, i64 %146)
  %148 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %149 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %148)
  %150 = call i32 @uea_leaves(i32 %149)
  br label %165

151:                                              ; preds = %31, %24
  %152 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %153 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %152)
  %154 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %155 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @le16_to_cpu(i8* %156)
  %158 = load %struct.cmv_e1*, %struct.cmv_e1** %6, align 8
  %159 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @uea_err(i32 %153, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %157, i64 %160)
  %162 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %163 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %162)
  %164 = call i32 @uea_leaves(i32 %163)
  br label %165

165:                                              ; preds = %151, %136, %113, %80
  ret void
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i64 @E1_MAKEFUNCTION(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @put_unaligned_le32(i64, i32*) #1

declare dso_local i32 @wake_up_cmv_ack(%struct.uea_softc*) #1

declare dso_local i32 @uea_leaves(i32) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i32 @uea_err(i32, i8*, i64, i64) #1

declare dso_local i64 @E1_FUNCTION_TYPE(i64) #1

declare dso_local i64 @E1_FUNCTION_SUBTYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
