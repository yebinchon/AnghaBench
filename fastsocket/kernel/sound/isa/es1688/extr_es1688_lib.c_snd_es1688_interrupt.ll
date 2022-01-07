; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i32, i32, i32 }

@DATA_AVAIL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_es1688_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_es1688*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.snd_es1688*
  store %struct.snd_es1688* %7, %struct.snd_es1688** %5, align 8
  %8 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %9 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %14 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_pcm_period_elapsed(i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %19 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 15
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %24 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_pcm_period_elapsed(i32 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %29 = load i32, i32* @DATA_AVAIL, align 4
  %30 = call i32 @ES1688P(%struct.snd_es1688* %28, i32 %29)
  %31 = call i32 @inb(i32 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ES1688P(%struct.snd_es1688*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
