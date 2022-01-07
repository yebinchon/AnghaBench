; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetIntSrc_A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetIntSrc_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32*, i32, i32 }

@CRBMSK_INTCTRL = common dso_local global i64 0, align 8
@CRBMSK_INTRESETCMD = common dso_local global i64 0, align 8
@CRBMSK_INTRESET_A = common dso_local global i64 0, align 8
@CRAMSK_INTSRC_A = common dso_local global i64 0, align 8
@CRABIT_INTSRC_A = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*, i64)* @SetIntSrc_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetIntSrc_A(%struct.comedi_device* %0, %struct.enc_private* %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.enc_private*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.enc_private* %1, %struct.enc_private** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %9 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @CRBMSK_INTCTRL, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* @CRBMSK_INTRESETCMD, align 8
  %14 = load i64, i64* @CRBMSK_INTRESET_A, align 8
  %15 = or i64 %13, %14
  %16 = call i32 @DEBIreplace(%struct.comedi_device* %7, i32 %10, i64 %12, i64 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %19 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @CRAMSK_INTSRC_A, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CRABIT_INTSRC_A, align 8
  %25 = shl i64 %23, %24
  %26 = call i32 @DEBIreplace(%struct.comedi_device* %17, i32 %20, i64 %22, i64 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %31 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %29, %35
  %37 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %38 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %36, %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @DEBIreplace(%struct.comedi_device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
