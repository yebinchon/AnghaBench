; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_CountersInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_CountersInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_private = type { i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)*, i32 (%struct.comedi_device.2*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_device.2 = type opaque
%struct.comedi_device.3 = type opaque
%struct.comedi_device = type { i32 }

@LOADSRC_INDX = common dso_local global i32 0, align 4
@BF_LOADSRC = common dso_local global i32 0, align 4
@INDXSRC_SOFT = common dso_local global i32 0, align 4
@BF_INDXSRC = common dso_local global i32 0, align 4
@CLKSRC_COUNTER = common dso_local global i32 0, align 4
@BF_CLKSRC = common dso_local global i32 0, align 4
@CLKPOL_POS = common dso_local global i32 0, align 4
@BF_CLKPOL = common dso_local global i32 0, align 4
@CNTDIR_UP = common dso_local global i32 0, align 4
@CLKMULT_1X = common dso_local global i32 0, align 4
@BF_CLKMULT = common dso_local global i32 0, align 4
@CLKENAB_INDEX = common dso_local global i32 0, align 4
@BF_CLKENAB = common dso_local global i32 0, align 4
@S626_ENCODER_CHANNELS = common dso_local global i32 0, align 4
@encpriv = common dso_local global %struct.enc_private* null, align 8
@TRUE = common dso_local global i32 0, align 4
@CLKENAB_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CountersInit: counters initialized \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @CountersInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CountersInit(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.enc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load i32, i32* @LOADSRC_INDX, align 4
  %7 = load i32, i32* @BF_LOADSRC, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @INDXSRC_SOFT, align 4
  %10 = load i32, i32* @BF_INDXSRC, align 4
  %11 = shl i32 %9, %10
  %12 = or i32 %8, %11
  %13 = load i32, i32* @CLKSRC_COUNTER, align 4
  %14 = load i32, i32* @BF_CLKSRC, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @CLKPOL_POS, align 4
  %18 = load i32, i32* @BF_CLKPOL, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* @CNTDIR_UP, align 4
  %22 = load i32, i32* @BF_CLKPOL, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @CLKMULT_1X, align 4
  %26 = load i32, i32* @BF_CLKMULT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @CLKENAB_INDEX, align 4
  %30 = load i32, i32* @BF_CLKENAB, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %73, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @S626_ENCODER_CHANNELS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.enc_private*, %struct.enc_private** @encpriv, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %38, i64 %40
  store %struct.enc_private* %41, %struct.enc_private** %4, align 8
  %42 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %43 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %42, i32 0, i32 3
  %44 = load i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)*, i32 (%struct.comedi_device.3*, %struct.enc_private*, i32, i32)** %43, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = bitcast %struct.comedi_device* %45 to %struct.comedi_device.3*
  %47 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 %44(%struct.comedi_device.3* %46, %struct.enc_private* %47, i32 %48, i32 %49)
  %51 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %52 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %51, i32 0, i32 2
  %53 = load i32 (%struct.comedi_device.2*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.2*, %struct.enc_private*, i32)** %52, align 8
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = bitcast %struct.comedi_device* %54 to %struct.comedi_device.2*
  %56 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %57 = call i32 %53(%struct.comedi_device.2* %55, %struct.enc_private* %56, i32 0)
  %58 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %59 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %58, i32 0, i32 1
  %60 = load i32 (%struct.comedi_device.1*, %struct.enc_private*)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)** %59, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = bitcast %struct.comedi_device* %61 to %struct.comedi_device.1*
  %63 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %64 = call i32 %60(%struct.comedi_device.1* %62, %struct.enc_private* %63)
  %65 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %66 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %65, i32 0, i32 0
  %67 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %66, align 8
  %68 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %69 = bitcast %struct.comedi_device* %68 to %struct.comedi_device.0*
  %70 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %71 = load i32, i32* @CLKENAB_ALWAYS, align 4
  %72 = call i32 %67(%struct.comedi_device.0* %69, %struct.enc_private* %70, i32 %71)
  br label %73

73:                                               ; preds = %37
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %33

76:                                               ; preds = %33
  %77 = call i32 @DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
