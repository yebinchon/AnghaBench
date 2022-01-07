; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_finish_output_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_finish_output_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32 }
%struct.dma_buffparms = type { i32, i32 (i32, i32)* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dma_buffparms*)* @finish_output_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_output_interrupt(i32 %0, %struct.dma_buffparms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buffparms*, align 8
  %5 = alloca %struct.audio_operations*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %4, align 8
  %6 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %6, i64 %8
  %10 = load %struct.audio_operations*, %struct.audio_operations** %9, align 8
  store %struct.audio_operations* %10, %struct.audio_operations** %5, align 8
  %11 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %11, i32 0, i32 1
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %17 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %16, i32 0, i32 1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dma_buffparms*, %struct.dma_buffparms** %4, align 8
  %21 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %26 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %25, i32 0, i32 1
  %27 = call i32 @wake_up(i32* %26)
  %28 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %29 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %28, i32 0, i32 0
  %30 = call i32 @wake_up(i32* %29)
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
