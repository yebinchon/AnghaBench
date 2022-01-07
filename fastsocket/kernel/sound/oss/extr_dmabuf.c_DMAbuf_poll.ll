; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32 }
%struct.file = type { i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_poll(%struct.file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.audio_operations*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %8, i64 %10
  %12 = load %struct.audio_operations*, %struct.audio_operations** %11, align 8
  store %struct.audio_operations* %12, %struct.audio_operations** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %15 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %14, i32 0, i32 0
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @poll_input(%struct.file* %18, i32 %19, i32* %20)
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @poll_output(%struct.file* %22, i32 %23, i32* %24)
  %26 = or i32 %21, %25
  ret i32 %26
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @poll_input(%struct.file*, i32, i32*) #1

declare dso_local i32 @poll_output(%struct.file*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
