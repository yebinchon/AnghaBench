; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_cfifo_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_cfifo_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }

@CURPIPE = common dso_local global i16 0, align 2
@CFIFOSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i16)* @cfifo_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfifo_change(%struct.r8a66597* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = call zeroext i16 @mbw_value(%struct.r8a66597* %6)
  store i16 %7, i16* %5, align 2
  %8 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @CURPIPE, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i16
  %21 = load i32, i32* @CFIFOSEL, align 4
  %22 = call i32 @r8a66597_mdfy(%struct.r8a66597* %8, i16 zeroext %14, i16 zeroext %20, i32 %21)
  %23 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %24 = load i32, i32* @CFIFOSEL, align 4
  %25 = load i16, i16* @CURPIPE, align 2
  %26 = load i16, i16* %4, align 2
  %27 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %23, i32 %24, i16 zeroext %25, i16 zeroext %26)
  ret void
}

declare dso_local zeroext i16 @mbw_value(%struct.r8a66597*) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
