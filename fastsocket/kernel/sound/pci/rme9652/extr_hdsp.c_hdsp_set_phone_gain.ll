; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_phone_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_phone_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_PhoneGainMask = common dso_local global i32 0, align 4
@HDSP_PhoneGain0dB = common dso_local global i32 0, align 4
@HDSP_PhoneGainMinus6dB = common dso_local global i32 0, align 4
@HDSP_PhoneGainMinus12dB = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_phone_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_phone_gain(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdsp*, align 8
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @HDSP_PhoneGainMask, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %9 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %31 [
    i32 0, label %13
    i32 1, label %19
    i32 2, label %25
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @HDSP_PhoneGain0dB, align 4
  %15 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @HDSP_PhoneGainMinus6dB, align 4
  %21 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %22 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @HDSP_PhoneGainMinus12dB, align 4
  %27 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %28 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

32:                                               ; preds = %25, %19, %13
  %33 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %34 = load i32, i32* @HDSP_controlRegister, align 4
  %35 = load %struct.hdsp*, %struct.hdsp** %4, align 8
  %36 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hdsp_write(%struct.hdsp* %33, i32 %34, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
