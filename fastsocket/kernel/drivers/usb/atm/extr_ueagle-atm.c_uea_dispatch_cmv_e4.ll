; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_dispatch_cmv_e4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_dispatch_cmv_e4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.cmv_dsc_e4 }
%struct.cmv_dsc_e4 = type { i64, i64, i64, i64 }
%struct.intr_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.cmv_e4 }
%struct.cmv_e4 = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cmv %x %x %x %x %x %x\0A\00", align 1
@E4_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E4_MODEMREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexpected cmv received, Function : %d, Subfunction : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, %struct.intr_pkt*)* @uea_dispatch_cmv_e4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_dispatch_cmv_e4(%struct.uea_softc* %0, %struct.intr_pkt* %1) #0 {
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca %struct.intr_pkt*, align 8
  %5 = alloca %struct.cmv_dsc_e4*, align 8
  %6 = alloca %struct.cmv_e4*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store %struct.intr_pkt* %1, %struct.intr_pkt** %4, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.cmv_dsc_e4* %9, %struct.cmv_dsc_e4** %5, align 8
  %10 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %11 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.cmv_e4* %14, %struct.cmv_e4** %6, align 8
  %15 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %16 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %15)
  %17 = call i32 @uea_enters(i32 %16)
  %18 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %19 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %18)
  %20 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %21 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be16_to_cpu(i32 %22)
  %24 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %25 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @be16_to_cpu(i32 %26)
  %28 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %29 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @be16_to_cpu(i32 %30)
  %32 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %33 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @be16_to_cpu(i32 %34)
  %36 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %37 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @be32_to_cpu(i32 %40)
  %42 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %43 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @be32_to_cpu(i32 %46)
  %48 = call i32 @uea_dbg(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %27, i64 %31, i64 %35, i8* %41, i8* %47)
  %49 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %50 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @be16_to_cpu(i32 %51)
  %53 = load %struct.cmv_dsc_e4*, %struct.cmv_dsc_e4** %5, align 8
  %54 = getelementptr inbounds %struct.cmv_dsc_e4, %struct.cmv_dsc_e4* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %2
  br label %123

58:                                               ; preds = %2
  %59 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %60 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @be16_to_cpu(i32 %61)
  %63 = load i32, i32* @E4_ADSLDIRECTIVE, align 4
  %64 = load i32, i32* @E4_MODEMREADY, align 4
  %65 = call i64 @E4_MAKEFUNCTION(i32 %63, i32 %64, i32 1)
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %69 = call i32 @wake_up_cmv_ack(%struct.uea_softc* %68)
  %70 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %71 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %70)
  %72 = call i32 @uea_leaves(i32 %71)
  br label %138

73:                                               ; preds = %58
  %74 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %75 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @be16_to_cpu(i32 %76)
  %78 = load %struct.cmv_dsc_e4*, %struct.cmv_dsc_e4** %5, align 8
  %79 = getelementptr inbounds %struct.cmv_dsc_e4, %struct.cmv_dsc_e4* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %100, label %82

82:                                               ; preds = %73
  %83 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %84 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be16_to_cpu(i32 %85)
  %87 = load %struct.cmv_dsc_e4*, %struct.cmv_dsc_e4** %5, align 8
  %88 = getelementptr inbounds %struct.cmv_dsc_e4, %struct.cmv_dsc_e4* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %82
  %92 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %93 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @be16_to_cpu(i32 %94)
  %96 = load %struct.cmv_dsc_e4*, %struct.cmv_dsc_e4** %5, align 8
  %97 = getelementptr inbounds %struct.cmv_dsc_e4, %struct.cmv_dsc_e4* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91, %82, %73
  br label %123

101:                                              ; preds = %91
  %102 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %103 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be32_to_cpu(i32 %106)
  %108 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %109 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %111 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @be32_to_cpu(i32 %114)
  %116 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %117 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %119 = call i32 @wake_up_cmv_ack(%struct.uea_softc* %118)
  %120 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %121 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %120)
  %122 = call i32 @uea_leaves(i32 %121)
  br label %138

123:                                              ; preds = %100, %57
  %124 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %125 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %124)
  %126 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %127 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @E4_FUNCTION_TYPE(i32 %128)
  %130 = load %struct.cmv_e4*, %struct.cmv_e4** %6, align 8
  %131 = getelementptr inbounds %struct.cmv_e4, %struct.cmv_e4* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @E4_FUNCTION_SUBTYPE(i32 %132)
  %134 = call i32 @uea_err(i32 %125, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %133)
  %135 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %136 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %135)
  %137 = call i32 @uea_leaves(i32 %136)
  br label %138

138:                                              ; preds = %123, %101, %67
  ret void
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_dbg(i32, i8*, i64, i64, i64, i64, i8*, i8*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @E4_MAKEFUNCTION(i32, i32, i32) #1

declare dso_local i32 @wake_up_cmv_ack(%struct.uea_softc*) #1

declare dso_local i32 @uea_leaves(i32) #1

declare dso_local i32 @uea_err(i32, i8*, i32, i32) #1

declare dso_local i32 @E4_FUNCTION_TYPE(i32) #1

declare dso_local i32 @E4_FUNCTION_SUBTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
