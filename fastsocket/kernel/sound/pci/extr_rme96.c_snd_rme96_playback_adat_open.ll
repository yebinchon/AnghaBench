; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_adat_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_adat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.rme96 = type { i32, i32, %struct.snd_pcm_substream*, i64 }

@EBUSY = common dso_local global i32 0, align 4
@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@RME96_IO_CONTROL_REGISTER = common dso_local global i64 0, align 8
@snd_rme96_playback_adat_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RME96_WCR_MASTER = common dso_local global i32 0, align 4
@RME96_INPUT_ANALOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_adat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_adat_open(%struct.snd_pcm_substream* %0) #0 {
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
  %13 = load %struct.rme96*, %struct.rme96** %6, align 8
  %14 = getelementptr inbounds %struct.rme96, %struct.rme96* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %17, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.rme96*, %struct.rme96** %6, align 8
  %22 = getelementptr inbounds %struct.rme96, %struct.rme96* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load i32, i32* @RME96_WCR_ADAT, align 4
  %28 = load %struct.rme96*, %struct.rme96** %6, align 8
  %29 = getelementptr inbounds %struct.rme96, %struct.rme96* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.rme96*, %struct.rme96** %6, align 8
  %33 = getelementptr inbounds %struct.rme96, %struct.rme96* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rme96*, %struct.rme96** %6, align 8
  %36 = getelementptr inbounds %struct.rme96, %struct.rme96* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RME96_IO_CONTROL_REGISTER, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = load %struct.rme96*, %struct.rme96** %6, align 8
  %43 = getelementptr inbounds %struct.rme96, %struct.rme96* %42, i32 0, i32 2
  store %struct.snd_pcm_substream* %41, %struct.snd_pcm_substream** %43, align 8
  %44 = load %struct.rme96*, %struct.rme96** %6, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_2__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 bitcast (%struct.TYPE_2__* @snd_rme96_playback_adat_info to i8*), i64 12, i1 false)
  %50 = load %struct.rme96*, %struct.rme96** %6, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RME96_WCR_MASTER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %26
  %57 = load %struct.rme96*, %struct.rme96** %6, align 8
  %58 = call i64 @snd_rme96_getinputtype(%struct.rme96* %57)
  %59 = load i64, i64* @RME96_INPUT_ANALOG, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.rme96*, %struct.rme96** %6, align 8
  %63 = call i32 @snd_rme96_capture_getrate(%struct.rme96* %62, i32* %5)
  store i32 %63, i32* %4, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @snd_pcm_rate_to_rate_bit(i32 %66)
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %65, %61, %56, %26
  %80 = load %struct.rme96*, %struct.rme96** %6, align 8
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %82 = call i32 @rme96_set_buffer_size_constraint(%struct.rme96* %80, %struct.snd_pcm_runtime* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %20
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @snd_rme96_getinputtype(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_capture_getrate(%struct.rme96*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @rme96_set_buffer_size_constraint(%struct.rme96*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
