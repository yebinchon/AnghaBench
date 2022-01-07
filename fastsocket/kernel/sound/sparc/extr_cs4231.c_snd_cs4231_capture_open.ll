; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_cs4231 = type { i64, %struct.snd_pcm_substream* }

@snd_cs4231_capture = common dso_local global i32 0, align 4
@CS4231_MODE_RECORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs4231_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cs4231* %8, %struct.snd_cs4231** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load i32, i32* @snd_cs4231_capture, align 4
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %16 = load i32, i32* @CS4231_MODE_RECORD, align 4
  %17 = call i32 @snd_cs4231_open(%struct.snd_cs4231* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_free_pages(i32 %23, i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %32 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %31, i32 0, i32 1
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %32, align 8
  %33 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %34 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %35)
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = call i32 @snd_cs4231_xrate(%struct.snd_pcm_runtime* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs4231_open(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @snd_free_pages(i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs4231_xrate(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
