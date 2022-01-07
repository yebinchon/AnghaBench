; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i64, i32 }

@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_RCR_IRQ = common dso_local global i32 0, align 4
@RME96_IO_CONFIRM_PLAY_IRQ = common dso_local global i64 0, align 8
@RME96_WCR_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*)* @snd_rme96_playback_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_playback_stop(%struct.rme96* %0) #0 {
  %2 = alloca %struct.rme96*, align 8
  store %struct.rme96* %0, %struct.rme96** %2, align 8
  %3 = load %struct.rme96*, %struct.rme96** %2, align 8
  %4 = getelementptr inbounds %struct.rme96, %struct.rme96* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load %struct.rme96*, %struct.rme96** %2, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rme96*, %struct.rme96** %2, align 8
  %12 = getelementptr inbounds %struct.rme96, %struct.rme96* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RME96_RCR_IRQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.rme96*, %struct.rme96** %2, align 8
  %19 = getelementptr inbounds %struct.rme96, %struct.rme96* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RME96_IO_CONFIRM_PLAY_IRQ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* @RME96_WCR_START, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.rme96*, %struct.rme96** %2, align 8
  %28 = getelementptr inbounds %struct.rme96, %struct.rme96* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.rme96*, %struct.rme96** %2, align 8
  %32 = getelementptr inbounds %struct.rme96, %struct.rme96* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rme96*, %struct.rme96** %2, align 8
  %35 = getelementptr inbounds %struct.rme96, %struct.rme96* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
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
