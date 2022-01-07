; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpPowerSaveSetMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpPowerSaveSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_MAC_REG_PRETBTT = common dso_local global i32 0, align 4
@ZM_MAC_REG_BCN_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpPowerSaveSetMode(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ZM_MAC_REG_PRETBTT, align 4
  %17 = call i32 @zfDelayWriteInternalReg(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZM_MAC_REG_BCN_PERIOD, align 4
  %20 = call i32 @zfDelayWriteInternalReg(i32* %18, i32 %19, i32 0)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @zfFlushDelayWrite(i32* %21)
  br label %36

23:                                               ; preds = %11
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ZM_MAC_REG_PRETBTT, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 6
  %28 = shl i32 %27, 16
  %29 = call i32 @zfDelayWriteInternalReg(i32* %24, i32 %25, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ZM_MAC_REG_BCN_PERIOD, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @zfDelayWriteInternalReg(i32* %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @zfFlushDelayWrite(i32* %34)
  br label %36

36:                                               ; preds = %23, %14
  br label %37

37:                                               ; preds = %36, %4
  ret void
}

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
