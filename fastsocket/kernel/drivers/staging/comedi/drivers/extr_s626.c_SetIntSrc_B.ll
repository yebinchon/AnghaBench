; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetIntSrc_B.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_SetIntSrc_B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32*, i32 }

@CRBMSK_INTCTRL = common dso_local global i64 0, align 8
@CRBMSK_INTRESETCMD = common dso_local global i64 0, align 8
@CRBMSK_INTRESET_B = common dso_local global i64 0, align 8
@CRBMSK_INTSRC_B = common dso_local global i64 0, align 8
@CRBBIT_INTSRC_B = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*, i64)* @SetIntSrc_B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetIntSrc_B(%struct.comedi_device* %0, %struct.enc_private* %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.enc_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.enc_private* %1, %struct.enc_private** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %10 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @DEBIread(%struct.comedi_device* %8, i32 %11)
  %13 = load i64, i64* @CRBMSK_INTCTRL, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %18 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @CRBMSK_INTRESETCMD, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @CRBMSK_INTRESET_B, align 8
  %24 = or i64 %22, %23
  %25 = call i32 @DEBIwrite(%struct.comedi_device* %16, i32 %19, i64 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %28 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @CRBMSK_INTSRC_B, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @CRBBIT_INTSRC_B, align 8
  %36 = shl i64 %34, %35
  %37 = or i64 %33, %36
  %38 = call i32 @DEBIwrite(%struct.comedi_device* %26, i32 %29, i64 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %43 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %41, %47
  %49 = load %struct.enc_private*, %struct.enc_private** %5, align 8
  %50 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %48, %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i64 @DEBIread(%struct.comedi_device*, i32) #1

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
