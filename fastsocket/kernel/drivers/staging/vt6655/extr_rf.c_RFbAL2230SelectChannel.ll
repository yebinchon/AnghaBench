; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL2230SelectChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFbAL2230SelectChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@dwAL2230ChannelTable0 = common dso_local global i32* null, align 8
@dwAL2230ChannelTable1 = common dso_local global i32* null, align 8
@MAC_REG_CHANNEL = common dso_local global i64 0, align 8
@SWITCH_CHANNEL_DELAY_AL2230 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbAL2230SelectChannel(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32*, i32** @dwAL2230ChannelTable0, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IFRFbWriteEmbeded(i64 %7, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32*, i32** @dwAL2230ChannelTable1, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IFRFbWriteEmbeded(i64 %17, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MAC_REG_CHANNEL, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 127
  %32 = call i32 @VNSvOutPortB(i64 %29, i32 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* @SWITCH_CHANNEL_DELAY_AL2230, align 4
  %35 = call i32 @MACvTimer0MicroSDelay(i64 %33, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @MAC_REG_CHANNEL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 128
  %41 = call i32 @VNSvOutPortB(i64 %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @IFRFbWriteEmbeded(i64, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvTimer0MicroSDelay(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
