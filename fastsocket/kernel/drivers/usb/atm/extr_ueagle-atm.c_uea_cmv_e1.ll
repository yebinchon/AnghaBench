; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_cmv_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_cmv_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cmv_e1 = type { i32, i32, i8*, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [70 x i8] c"Function : %d-%d, Address : %c%c%c%c, offset : 0x%04x, data : 0x%08x\0A\00", align 1
@E1_PREAMBLE = common dso_local global i32 0, align 4
@E1_HOSTTOMODEM = common dso_local global i32 0, align 4
@UEA_E1_SET_BLOCK = common dso_local global i32 0, align 4
@UEA_MPTX_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*, i32, i32, i32, i32)* @uea_cmv_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_cmv_e1(%struct.uea_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uea_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cmv_e1, align 8
  %13 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %15 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %14)
  %16 = call i32 @uea_enters(i32 %15)
  %17 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %18 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @E1_FUNCTION_TYPE(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @E1_FUNCTION_SUBTYPE(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @E1_GETSA1(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @E1_GETSA2(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @E1_GETSA3(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @E1_GETSA4(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @uea_vdbg(i32 %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 2
  %36 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %37 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %41 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %48 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %53 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @E1_PREAMBLE, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 6
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @E1_HOSTTOMODEM, align 4
  %60 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %64 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 3
  %72 = call i32 @put_unaligned_le32(i32 %70, i32* %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %76, 16
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 16
  %80 = or i32 %77, %79
  %81 = getelementptr inbounds %struct.cmv_e1, %struct.cmv_e1* %12, i32 0, i32 1
  %82 = call i32 @put_unaligned_le32(i32 %80, i32* %81)
  %83 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %84 = load i32, i32* @UEA_E1_SET_BLOCK, align 4
  %85 = load i32, i32* @UEA_MPTX_START, align 4
  %86 = call i32 @uea_request(%struct.uea_softc* %83, i32 %84, i32 %85, i32 48, %struct.cmv_e1* %12)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %5
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %98

91:                                               ; preds = %5
  %92 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %93 = call i32 @wait_cmv_ack(%struct.uea_softc* %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.uea_softc*, %struct.uea_softc** %7, align 8
  %95 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %94)
  %96 = call i32 @uea_leaves(i32 %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %91, %89
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_vdbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @E1_FUNCTION_TYPE(i32) #1

declare dso_local i32 @E1_FUNCTION_SUBTYPE(i32) #1

declare dso_local i32 @E1_GETSA1(i32) #1

declare dso_local i32 @E1_GETSA2(i32) #1

declare dso_local i32 @E1_GETSA3(i32) #1

declare dso_local i32 @E1_GETSA4(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, %struct.cmv_e1*) #1

declare dso_local i32 @wait_cmv_ack(%struct.uea_softc*) #1

declare dso_local i32 @uea_leaves(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
