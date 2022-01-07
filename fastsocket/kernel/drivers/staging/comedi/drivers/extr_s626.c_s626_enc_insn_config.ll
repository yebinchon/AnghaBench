; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_private = type { i32 (%struct.comedi_device.0*, %struct.enc_private*, i64)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)*, i32 (%struct.comedi_device.2*, %struct.enc_private*, i64, i32)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_device.2 = type opaque
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32*, i32 }

@LOADSRC_INDX = common dso_local global i64 0, align 8
@BF_LOADSRC = common dso_local global i64 0, align 8
@INDXSRC_SOFT = common dso_local global i64 0, align 8
@BF_INDXSRC = common dso_local global i64 0, align 8
@CLKSRC_COUNTER = common dso_local global i64 0, align 8
@BF_CLKSRC = common dso_local global i64 0, align 8
@CLKPOL_POS = common dso_local global i64 0, align 8
@BF_CLKPOL = common dso_local global i64 0, align 8
@CLKMULT_1X = common dso_local global i64 0, align 8
@BF_CLKMULT = common dso_local global i64 0, align 8
@CLKENAB_INDEX = common dso_local global i64 0, align 8
@BF_CLKENAB = common dso_local global i64 0, align 8
@LATCHSRC_AB_READ = common dso_local global i64 0, align 8
@CLKENAB_ALWAYS = common dso_local global i64 0, align 8
@encpriv = common dso_local global %struct.enc_private* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"s626_enc_insn_config: encoder config\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s626_enc_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_enc_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.enc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i64, i64* @LOADSRC_INDX, align 8
  %14 = load i64, i64* @BF_LOADSRC, align 8
  %15 = shl i64 %13, %14
  %16 = load i64, i64* @INDXSRC_SOFT, align 8
  %17 = load i64, i64* @BF_INDXSRC, align 8
  %18 = shl i64 %16, %17
  %19 = or i64 %15, %18
  %20 = load i64, i64* @CLKSRC_COUNTER, align 8
  %21 = load i64, i64* @BF_CLKSRC, align 8
  %22 = shl i64 %20, %21
  %23 = or i64 %19, %22
  %24 = load i64, i64* @CLKPOL_POS, align 8
  %25 = load i64, i64* @BF_CLKPOL, align 8
  %26 = shl i64 %24, %25
  %27 = or i64 %23, %26
  %28 = load i64, i64* @CLKMULT_1X, align 8
  %29 = load i64, i64* @BF_CLKMULT, align 8
  %30 = shl i64 %28, %29
  %31 = or i64 %27, %30
  %32 = load i64, i64* @CLKENAB_INDEX, align 8
  %33 = load i64, i64* @BF_CLKENAB, align 8
  %34 = shl i64 %32, %33
  %35 = or i64 %31, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* @LATCHSRC_AB_READ, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* @CLKENAB_ALWAYS, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.enc_private*, %struct.enc_private** @encpriv, align 8
  %39 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @CR_CHAN(i32 %41)
  %43 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %38, i64 %42
  store %struct.enc_private* %43, %struct.enc_private** %12, align 8
  %44 = call i32 @DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %46 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %45, i32 0, i32 2
  %47 = load i32 (%struct.comedi_device.2*, %struct.enc_private*, i64, i32)*, i32 (%struct.comedi_device.2*, %struct.enc_private*, i64, i32)** %46, align 8
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = bitcast %struct.comedi_device* %48 to %struct.comedi_device.2*
  %50 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 %47(%struct.comedi_device.2* %49, %struct.enc_private* %50, i64 %51, i32 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %55 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @Preload(%struct.comedi_device* %54, %struct.enc_private* %55, i32 %59)
  %61 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %62 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %61, i32 0, i32 1
  %63 = load i32 (%struct.comedi_device.1*, %struct.enc_private*)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)** %62, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = bitcast %struct.comedi_device* %64 to %struct.comedi_device.1*
  %66 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %67 = call i32 %63(%struct.comedi_device.1* %65, %struct.enc_private* %66)
  %68 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %69 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @SetLatchSource(%struct.comedi_device* %68, %struct.enc_private* %69, i64 %70)
  %72 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %73 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %72, i32 0, i32 0
  %74 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i64)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i64)** %73, align 8
  %75 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %76 = bitcast %struct.comedi_device* %75 to %struct.comedi_device.0*
  %77 = load %struct.enc_private*, %struct.enc_private** %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = call i32 %74(%struct.comedi_device.0* %76, %struct.enc_private* %77, i64 %81)
  %83 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  ret i32 %85
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @Preload(%struct.comedi_device*, %struct.enc_private*, i32) #1

declare dso_local i32 @SetLatchSource(%struct.comedi_device*, %struct.enc_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
