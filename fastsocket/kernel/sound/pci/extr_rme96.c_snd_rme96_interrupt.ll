; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i64, i32, i32 }

@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@RME96_RCR_IRQ = common dso_local global i32 0, align 4
@RME96_RCR_IRQ_2 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RME96_IO_CONFIRM_PLAY_IRQ = common dso_local global i64 0, align 8
@RME96_IO_CONFIRM_REC_IRQ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_rme96_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rme96*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.rme96*
  store %struct.rme96* %8, %struct.rme96** %6, align 8
  %9 = load %struct.rme96*, %struct.rme96** %6, align 8
  %10 = getelementptr inbounds %struct.rme96, %struct.rme96* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = load %struct.rme96*, %struct.rme96** %6, align 8
  %16 = getelementptr inbounds %struct.rme96, %struct.rme96* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rme96*, %struct.rme96** %6, align 8
  %18 = getelementptr inbounds %struct.rme96, %struct.rme96* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RME96_RCR_IRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.rme96*, %struct.rme96** %6, align 8
  %25 = getelementptr inbounds %struct.rme96, %struct.rme96* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RME96_RCR_IRQ_2, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %23, %2
  %33 = load %struct.rme96*, %struct.rme96** %6, align 8
  %34 = getelementptr inbounds %struct.rme96, %struct.rme96* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RME96_RCR_IRQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.rme96*, %struct.rme96** %6, align 8
  %41 = getelementptr inbounds %struct.rme96, %struct.rme96* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_pcm_period_elapsed(i32 %42)
  %44 = load %struct.rme96*, %struct.rme96** %6, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RME96_IO_CONFIRM_PLAY_IRQ, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 0, i64 %48)
  br label %50

50:                                               ; preds = %39, %32
  %51 = load %struct.rme96*, %struct.rme96** %6, align 8
  %52 = getelementptr inbounds %struct.rme96, %struct.rme96* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RME96_RCR_IRQ_2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.rme96*, %struct.rme96** %6, align 8
  %59 = getelementptr inbounds %struct.rme96, %struct.rme96* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_pcm_period_elapsed(i32 %60)
  %62 = load %struct.rme96*, %struct.rme96** %6, align 8
  %63 = getelementptr inbounds %struct.rme96, %struct.rme96* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RME96_IO_CONFIRM_REC_IRQ, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  br label %68

68:                                               ; preds = %57, %50
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %30
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
