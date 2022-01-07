; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_WriteTrimDAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_WriteTrimDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@trimchan = common dso_local global i64* null, align 8
@XSD2 = common dso_local global i32 0, align 4
@XFIFO_1 = common dso_local global i32 0, align 4
@WS3 = common dso_local global i32 0, align 4
@XFIFO_0 = common dso_local global i32 0, align 4
@XFIFO_3 = common dso_local global i32 0, align 4
@WS1 = common dso_local global i32 0, align 4
@XFIFO_2 = common dso_local global i32 0, align 4
@EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i64, i64)* @WriteTrimDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteTrimDAC(%struct.comedi_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 %8, i64* %13, align 8
  %14 = load i64*, i64** @trimchan, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @XSD2, align 4
  %20 = load i32, i32* @XFIFO_1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WS3, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @SETVECT(i32 2, i32 %23)
  %25 = load i32, i32* @XSD2, align 4
  %26 = load i32, i32* @XFIFO_0, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WS3, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @SETVECT(i32 3, i32 %29)
  %31 = load i32, i32* @XSD2, align 4
  %32 = load i32, i32* @XFIFO_3, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WS1, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SETVECT(i32 4, i32 %35)
  %37 = load i32, i32* @XSD2, align 4
  %38 = load i32, i32* @XFIFO_2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @WS1, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @EOS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @SETVECT(i32 5, i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 8
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = or i32 %47, %49
  %51 = call i32 @SendDAC(%struct.comedi_device* %45, i32 %50)
  ret void
}

declare dso_local i32 @SETVECT(i32, i32) #1

declare dso_local i32 @SendDAC(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
