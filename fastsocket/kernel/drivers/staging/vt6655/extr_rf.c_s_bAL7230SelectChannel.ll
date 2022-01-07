; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_s_bAL7230SelectChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_s_bAL7230SelectChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@MAC_REG_SOFTPWRCTL = common dso_local global i32 0, align 4
@SOFTPWRCTL_SWPE3 = common dso_local global i32 0, align 4
@dwAL7230ChannelTable0 = common dso_local global i32* null, align 8
@dwAL7230ChannelTable1 = common dso_local global i32* null, align 8
@dwAL7230ChannelTable2 = common dso_local global i32* null, align 8
@MAC_REG_CHANNEL = common dso_local global i64 0, align 8
@SWITCH_CHANNEL_DELAY_AL7230 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s_bAL7230SelectChannel(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %9 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %10 = call i32 @MACvWordRegBitsOff(i64 %7, i32 %8, i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i32*, i32** @dwAL7230ChannelTable0, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IFRFbWriteEmbeded(i64 %11, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load i32*, i32** @dwAL7230ChannelTable1, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IFRFbWriteEmbeded(i64 %21, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load i32*, i32** @dwAL7230ChannelTable2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IFRFbWriteEmbeded(i64 %31, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* @MAC_REG_SOFTPWRCTL, align 4
  %43 = load i32, i32* @SOFTPWRCTL_SWPE3, align 4
  %44 = call i32 @MACvWordRegBitsOn(i64 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @MAC_REG_CHANNEL, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 127
  %50 = call i32 @VNSvOutPortB(i64 %47, i32 %49)
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* @SWITCH_CHANNEL_DELAY_AL7230, align 4
  %53 = call i32 @MACvTimer0MicroSDelay(i64 %51, i32 %52)
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @MAC_REG_CHANNEL, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, 128
  %59 = call i32 @VNSvOutPortB(i64 %56, i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @MACvWordRegBitsOff(i64, i32, i32) #1

declare dso_local i32 @IFRFbWriteEmbeded(i64, i32) #1

declare dso_local i32 @MACvWordRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvTimer0MicroSDelay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
