; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_PulseIndex_A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_PulseIndex_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.enc_private = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"PulseIndex_A: pulse index enter\0A\00", align 1
@CRAMSK_INDXPOL_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PulseIndex_A: pulse index step1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.enc_private*)* @PulseIndex_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PulseIndex_A(%struct.comedi_device* %0, %struct.enc_private* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.enc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.enc_private* %1, %struct.enc_private** %4, align 8
  %6 = call i32 @DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %9 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DEBIread(%struct.comedi_device* %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %14 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CRAMSK_INDXPOL_A, align 4
  %18 = xor i32 %16, %17
  %19 = call i32 @DEBIwrite(%struct.comedi_device* %12, i32 %15, i32 %18)
  %20 = call i32 @DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = load %struct.enc_private*, %struct.enc_private** %4, align 8
  %23 = getelementptr inbounds %struct.enc_private, %struct.enc_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DEBIwrite(%struct.comedi_device* %21, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @DEBIread(%struct.comedi_device*, i32) #1

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
