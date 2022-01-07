; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme32 = type { i32, i32, i64 }

@RME32_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME32_RCR_IRQ = common dso_local global i32 0, align 4
@RME32_IO_CONFIRM_ACTION_IRQ = common dso_local global i64 0, align 8
@RME32_WCR_START = common dso_local global i32 0, align 4
@RME32_WCR_SEL = common dso_local global i32 0, align 4
@RME32_WCR_MUTE = common dso_local global i32 0, align 4
@RME32_IO_RESET_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme32*, i32)* @snd_rme32_pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme32_pcm_stop(%struct.rme32* %0, i32 %1) #0 {
  %3 = alloca %struct.rme32*, align 8
  %4 = alloca i32, align 4
  store %struct.rme32* %0, %struct.rme32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rme32*, %struct.rme32** %3, align 8
  %6 = getelementptr inbounds %struct.rme32, %struct.rme32* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = load %struct.rme32*, %struct.rme32** %3, align 8
  %12 = getelementptr inbounds %struct.rme32, %struct.rme32* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rme32*, %struct.rme32** %3, align 8
  %14 = getelementptr inbounds %struct.rme32, %struct.rme32* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RME32_RCR_IRQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.rme32*, %struct.rme32** %3, align 8
  %21 = getelementptr inbounds %struct.rme32, %struct.rme32* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RME32_IO_CONFIRM_ACTION_IRQ, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @RME32_WCR_START, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.rme32*, %struct.rme32** %3, align 8
  %30 = getelementptr inbounds %struct.rme32, %struct.rme32* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.rme32*, %struct.rme32** %3, align 8
  %34 = getelementptr inbounds %struct.rme32, %struct.rme32* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RME32_WCR_SEL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load i32, i32* @RME32_WCR_MUTE, align 4
  %41 = load %struct.rme32*, %struct.rme32** %3, align 8
  %42 = getelementptr inbounds %struct.rme32, %struct.rme32* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %26
  %46 = load %struct.rme32*, %struct.rme32** %3, align 8
  %47 = getelementptr inbounds %struct.rme32, %struct.rme32* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rme32*, %struct.rme32** %3, align 8
  %50 = getelementptr inbounds %struct.rme32, %struct.rme32* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RME32_IO_CONTROL_REGISTER, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %45
  %58 = load %struct.rme32*, %struct.rme32** %3, align 8
  %59 = getelementptr inbounds %struct.rme32, %struct.rme32* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RME32_IO_RESET_POS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 0, i64 %62)
  br label %64

64:                                               ; preds = %57, %45
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
