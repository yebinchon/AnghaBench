; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart.c_snd_mixart_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.mixart_stream* }
%struct.mixart_stream = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_mixart = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"snd_mixart_prepare\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_mixart_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixart_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_mixart*, align 8
  %5 = alloca %struct.mixart_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_mixart* %7, %struct.snd_mixart** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.mixart_stream*, %struct.mixart_stream** %11, align 8
  store %struct.mixart_stream* %12, %struct.mixart_stream** %5, align 8
  %13 = call i32 @snd_printdd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %15 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @mixart_sync_nonblock_events(%struct.TYPE_6__* %16)
  %18 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %19 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %31 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %36 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.snd_mixart*, %struct.snd_mixart** %4, align 8
  %43 = getelementptr inbounds %struct.snd_mixart, %struct.snd_mixart* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.mixart_stream*, %struct.mixart_stream** %5, align 8
  %46 = getelementptr inbounds %struct.mixart_stream, %struct.mixart_stream* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @mixart_set_clock(%struct.TYPE_6__* %44, %struct.TYPE_7__* %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %34
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.snd_mixart* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @mixart_sync_nonblock_events(%struct.TYPE_6__*) #1

declare dso_local i64 @mixart_set_clock(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
