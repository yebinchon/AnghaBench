; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_enc_insn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_private = type { i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)* }
%struct.comedi_device.0 = type opaque
%struct.comedi_device.1 = type opaque
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@encpriv = common dso_local global %struct.enc_private* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"s626_enc_insn_write: encoder write channel %d \0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"s626_enc_insn_write: End encoder write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s626_enc_insn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_enc_insn_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.enc_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.enc_private*, %struct.enc_private** @encpriv, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @CR_CHAN(i32 %13)
  %15 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %10, i64 %14
  store %struct.enc_private* %15, %struct.enc_private** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CR_CHAN(i32 %18)
  %20 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Preload(%struct.comedi_device* %21, %struct.enc_private* %22, i32 %25)
  %27 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %28 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %27, i32 0, i32 0
  %29 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %28, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = bitcast %struct.comedi_device* %30 to %struct.comedi_device.0*
  %32 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %33 = call i32 %29(%struct.comedi_device.0* %31, %struct.enc_private* %32, i32 0)
  %34 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %35 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %34, i32 0, i32 1
  %36 = load i32 (%struct.comedi_device.1*, %struct.enc_private*)*, i32 (%struct.comedi_device.1*, %struct.enc_private*)** %35, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = bitcast %struct.comedi_device* %37 to %struct.comedi_device.1*
  %39 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %40 = call i32 %36(%struct.comedi_device.1* %38, %struct.enc_private* %39)
  %41 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %42 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %41, i32 0, i32 0
  %43 = load i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)*, i32 (%struct.comedi_device.0*, %struct.enc_private*, i32)** %42, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %45 = bitcast %struct.comedi_device* %44 to %struct.comedi_device.0*
  %46 = load %struct.enc_private*, %struct.enc_private** %9, align 8
  %47 = call i32 %43(%struct.comedi_device.0* %45, %struct.enc_private* %46, i32 2)
  %48 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @DEBUG(i8*, ...) #1

declare dso_local i32 @Preload(%struct.comedi_device*, %struct.enc_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
