; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_spdif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, %struct.snd_pcm_substream* }

@snd_rme96_capture_spdif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_capture_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme96* %9, %struct.rme96** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_capture_spdif_info to i8*), i64 12, i1 false)
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = call i64 @snd_rme96_getinputtype(%struct.rme96* %16)
  %18 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load %struct.rme96*, %struct.rme96** %6, align 8
  %22 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %68

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @snd_pcm_rate_to_rate_bit(i32 %31)
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %20, %1
  %45 = load %struct.rme96*, %struct.rme96** %6, align 8
  %46 = getelementptr inbounds %struct.rme96, %struct.rme96* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.rme96*, %struct.rme96** %6, align 8
  %49 = getelementptr inbounds %struct.rme96, %struct.rme96* %48, i32 0, i32 1
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %49, align 8
  %51 = icmp ne %struct.snd_pcm_substream* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.rme96*, %struct.rme96** %6, align 8
  %54 = getelementptr inbounds %struct.rme96, %struct.rme96* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %44
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = load %struct.rme96*, %struct.rme96** %6, align 8
  %61 = getelementptr inbounds %struct.rme96, %struct.rme96* %60, i32 0, i32 1
  store %struct.snd_pcm_substream* %59, %struct.snd_pcm_substream** %61, align 8
  %62 = load %struct.rme96*, %struct.rme96** %6, align 8
  %63 = getelementptr inbounds %struct.rme96, %struct.rme96* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.rme96*, %struct.rme96** %6, align 8
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %67 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %65, %struct.snd_pcm_runtime* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %52, %27
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rme96_set_buffer_size_constraint(%struct.rme96*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
