; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_capture_spdif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme32.c_snd_rme32_capture_spdif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__ }
%struct.rme32 = type { i64, i32, %struct.snd_pcm_substream* }

@EBUSY = common dso_local global i32 0, align 4
@snd_rme32_spdif_fd_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@snd_rme32_spdif_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SNDRV_PCM_RATE_88200 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_96000 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme32_capture_spdif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme32_capture_spdif_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme32*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.rme32* %9, %struct.rme32** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %7, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load %struct.rme32*, %struct.rme32** %6, align 8
  %16 = getelementptr inbounds %struct.rme32, %struct.rme32* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.rme32*, %struct.rme32** %6, align 8
  %19 = getelementptr inbounds %struct.rme32, %struct.rme32* %18, i32 0, i32 2
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp ne %struct.snd_pcm_substream* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rme32*, %struct.rme32** %6, align 8
  %24 = getelementptr inbounds %struct.rme32, %struct.rme32* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %91

28:                                               ; preds = %1
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = load %struct.rme32*, %struct.rme32** %6, align 8
  %31 = getelementptr inbounds %struct.rme32, %struct.rme32* %30, i32 0, i32 2
  store %struct.snd_pcm_substream* %29, %struct.snd_pcm_substream** %31, align 8
  %32 = load %struct.rme32*, %struct.rme32** %6, align 8
  %33 = getelementptr inbounds %struct.rme32, %struct.rme32* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.rme32*, %struct.rme32** %6, align 8
  %36 = getelementptr inbounds %struct.rme32, %struct.rme32* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_3__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_spdif_fd_info to i8*), i64 12, i1 false)
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_3__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_3__* @snd_rme32_spdif_info to i8*), i64 12, i1 false)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.rme32*, %struct.rme32** %6, align 8
  %49 = call i64 @RME32_PRO_WITH_8414(%struct.rme32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* @SNDRV_PCM_RATE_88200, align 4
  %53 = load i32, i32* @SNDRV_PCM_RATE_96000, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 96000, i32* %62, align 4
  br label %63

63:                                               ; preds = %51, %47
  %64 = load %struct.rme32*, %struct.rme32** %6, align 8
  %65 = call i32 @snd_rme32_capture_getrate(%struct.rme32* %64, i32* %4)
  store i32 %65, i32* %5, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %91

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @snd_pcm_rate_to_rate_bit(i32 %74)
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %73, %63
  %88 = load %struct.rme32*, %struct.rme32** %6, align 8
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %90 = call i32 @snd_rme32_set_buffer_constraint(%struct.rme32* %88, %struct.snd_pcm_runtime* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %70, %22
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.rme32* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @RME32_PRO_WITH_8414(%struct.rme32*) #1

declare dso_local i32 @snd_rme32_capture_getrate(%struct.rme32*, i32*) #1

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @snd_rme32_set_buffer_constraint(%struct.rme32*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
