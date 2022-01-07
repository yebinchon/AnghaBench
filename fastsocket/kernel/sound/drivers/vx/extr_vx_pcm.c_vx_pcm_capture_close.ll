; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vx_pipe* }
%struct.vx_pipe = type { i64, i64, %struct.vx_pipe* }
%struct.vx_core = type { i32**, i32** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @vx_pcm_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_pipe*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.vx_core* %8, %struct.vx_core** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.vx_pipe*, %struct.vx_pipe** %12, align 8
  %14 = icmp ne %struct.vx_pipe* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.vx_pipe*, %struct.vx_pipe** %22, align 8
  store %struct.vx_pipe* %23, %struct.vx_pipe** %5, align 8
  %24 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %25 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %28 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  store i32* null, i32** %30, align 8
  %31 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %32 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %31, i32 0, i32 2
  %33 = load %struct.vx_pipe*, %struct.vx_pipe** %32, align 8
  store %struct.vx_pipe* %33, %struct.vx_pipe** %6, align 8
  %34 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %35 = icmp ne %struct.vx_pipe* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %18
  %37 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %38 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %44 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %45 = call i32 @vx_free_pipe(%struct.vx_core* %43, %struct.vx_pipe* %44)
  %46 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %47 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %50 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  store i32* null, i32** %52, align 8
  %53 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %54 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %53, i32 0, i32 2
  store %struct.vx_pipe* null, %struct.vx_pipe** %54, align 8
  br label %55

55:                                               ; preds = %42, %36
  br label %56

56:                                               ; preds = %55, %18
  %57 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %58 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %59 = call i32 @vx_free_pipe(%struct.vx_core* %57, %struct.vx_pipe* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vx_free_pipe(%struct.vx_core*, %struct.vx_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
