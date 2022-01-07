; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_adat_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_capture_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, %struct.snd_pcm_substream* }

@snd_rme96_capture_adat_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_capture_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_capture_adat_open(%struct.snd_pcm_substream* %0) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_capture_adat_info to i8*), i64 12, i1 false)
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = call i64 @snd_rme96_getinputtype(%struct.rme96* %16)
  %18 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.rme96*, %struct.rme96** %6, align 8
  %25 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %24, i32* %4)
  store i32 %25, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %71

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snd_pcm_rate_to_rate_bit(i32 %34)
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %33, %23
  %48 = load %struct.rme96*, %struct.rme96** %6, align 8
  %49 = getelementptr inbounds %struct.rme96, %struct.rme96* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.rme96*, %struct.rme96** %6, align 8
  %52 = getelementptr inbounds %struct.rme96, %struct.rme96* %51, i32 0, i32 1
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %52, align 8
  %54 = icmp ne %struct.snd_pcm_substream* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.rme96*, %struct.rme96** %6, align 8
  %57 = getelementptr inbounds %struct.rme96, %struct.rme96* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %71

61:                                               ; preds = %47
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %63 = load %struct.rme96*, %struct.rme96** %6, align 8
  %64 = getelementptr inbounds %struct.rme96, %struct.rme96* %63, i32 0, i32 1
  store %struct.snd_pcm_substream* %62, %struct.snd_pcm_substream** %64, align 8
  %65 = load %struct.rme96*, %struct.rme96** %6, align 8
  %66 = getelementptr inbounds %struct.rme96, %struct.rme96* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load %struct.rme96*, %struct.rme96** %6, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %70 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %68, %struct.snd_pcm_runtime* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %55, %30, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
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
