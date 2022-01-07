; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_spdif_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_set_spdif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_SPDIFInputMask = common dso_local global i32 0, align 4
@HDSP_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32)* @hdsp_set_spdif_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_set_spdif_input(%struct.hdsp* %0, i32 %1) #0 {
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @HDSP_SPDIFInputMask, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %8 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @hdsp_encode_spdif_in(i32 %11)
  %13 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %18 = load i32, i32* @HDSP_controlRegister, align 4
  %19 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %20 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hdsp_write(%struct.hdsp* %17, i32 %18, i32 %21)
  ret i32 0
}

declare dso_local i32 @hdsp_encode_spdif_in(i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
