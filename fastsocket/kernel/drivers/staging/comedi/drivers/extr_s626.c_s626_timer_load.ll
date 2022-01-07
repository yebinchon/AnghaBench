; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_timer_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_timer_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.1*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.2*, %struct.enc_private*)*, i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_device.2 = type opaque
%struct.comedi_device.3 = type opaque

@LOADSRC_INDX = common dso_local global i32 0, align 4
@BF_LOADSRC = common dso_local global i32 0, align 4
@INDXSRC_SOFT = common dso_local global i32 0, align 4
@BF_INDXSRC = common dso_local global i32 0, align 4
@CLKSRC_TIMER = common dso_local global i32 0, align 4
@BF_CLKSRC = common dso_local global i32 0, align 4
@CLKPOL_POS = common dso_local global i32 0, align 4
@BF_CLKPOL = common dso_local global i32 0, align 4
@CNTDIR_DOWN = common dso_local global i32 0, align 4
@CLKMULT_1X = common dso_local global i32 0, align 4
@BF_CLKMULT = common dso_local global i32 0, align 4
@CLKENAB_INDEX = common dso_local global i32 0, align 4
@BF_CLKENAB = common dso_local global i32 0, align 4
@LATCHSRC_A_INDXA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INTSRC_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*, i32)* @s626_timer_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_timer_load(%struct.comedi_device* %0, %struct.enc_private* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.enc_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.enc_private* %1, %struct.enc_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @LOADSRC_INDX, align 4
  %10 = load i32, i32* @BF_LOADSRC, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @INDXSRC_SOFT, align 4
  %13 = load i32, i32* @BF_INDXSRC, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = load i32, i32* @CLKSRC_TIMER, align 4
  %17 = load i32, i32* @BF_CLKSRC, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* @CLKPOL_POS, align 4
  %21 = load i32, i32* @BF_CLKPOL, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* @CNTDIR_DOWN, align 4
  %25 = load i32, i32* @BF_CLKPOL, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @CLKMULT_1X, align 4
  %29 = load i32, i32* @BF_CLKMULT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* @CLKENAB_INDEX, align 4
  %33 = load i32, i32* @BF_CLKENAB, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @LATCHSRC_A_INDXA, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %38 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %37, i32 0, i32 3
  %39 = load i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)*, i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)** %38, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = bitcast %struct.comedi_device* %40 to %struct.comedi_device.3*
  %42 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 %39(%struct.comedi_device.3* %41, %struct.enc_private* %42, i32 %43, i32 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @Preload(%struct.comedi_device* %46, %struct.enc_private* %47, i32 %48)
  %50 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %51 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %50, i32 0, i32 1
  %52 = load i32 (%struct.comedi_device.1*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.1*, %struct.enc_private*, i32)** %51, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = bitcast %struct.comedi_device* %53 to %struct.comedi_device.1*
  %55 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %56 = call i32 %52(%struct.comedi_device.1* %54, %struct.enc_private* %55, i32 0)
  %57 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %58 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %57, i32 0, i32 2
  %59 = load i32 (%struct.comedi_device.2*, %struct.enc_private*)*, i32 (%struct.comedi_device.2*, %struct.enc_private*)** %58, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = bitcast %struct.comedi_device* %60 to %struct.comedi_device.2*
  %62 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %63 = call i32 %59(%struct.comedi_device.2* %61, %struct.enc_private* %62)
  %64 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %65 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %64, i32 0, i32 1
  %66 = load i32 (%struct.comedi_device.1*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.1*, %struct.enc_private*, i32)** %65, align 8
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = bitcast %struct.comedi_device* %67 to %struct.comedi_device.1*
  %69 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %70 = call i32 %66(%struct.comedi_device.1* %68, %struct.enc_private* %69, i32 1)
  %71 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %72 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %71, i32 0, i32 0
  %73 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %72, align 8
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = bitcast %struct.comedi_device* %74 to %struct.comedi_device.0*
  %76 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %77 = load i32, i32* @INTSRC_OVER, align 4
  %78 = call i32 %73(%struct.comedi_device.0* %75, %struct.enc_private* %76, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @SetLatchSource(%struct.comedi_device* %79, %struct.enc_private* %80, i32 %81)
  ret void
}

declare dso_local i32 @Preload(%struct.comedi_device*, %struct.enc_private*, i32) #1

declare dso_local i32 @SetLatchSource(%struct.comedi_device*, %struct.enc_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
