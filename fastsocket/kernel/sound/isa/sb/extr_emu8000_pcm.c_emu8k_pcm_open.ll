; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_emu8k_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__, %struct.snd_emu8k_pcm* }
%struct.snd_emu8k_pcm = type { %struct.TYPE_3__, i32, %struct.snd_pcm_substream*, %struct.snd_emu8000* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.snd_emu8000 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@emu8k_pcm_timer_func = common dso_local global i32 0, align 4
@emu8k_pcm_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LOOP_BLANK_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @emu8k_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu8k_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu8000*, align 8
  %5 = alloca %struct.snd_emu8k_pcm*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_emu8000* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu8000* %8, %struct.snd_emu8000** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.snd_emu8k_pcm* @kzalloc(i32 40, i32 %12)
  store %struct.snd_emu8k_pcm* %13, %struct.snd_emu8k_pcm** %5, align 8
  %14 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %15 = icmp ne %struct.snd_emu8k_pcm* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %21 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %21, i32 0, i32 3
  store %struct.snd_emu8000* %20, %struct.snd_emu8000** %22, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %24, i32 0, i32 2
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %25, align 8
  %26 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 1
  store %struct.snd_emu8k_pcm* %26, %struct.snd_emu8k_pcm** %28, align 8
  %29 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %29, i32 0, i32 1
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %32, i32 0, i32 0
  %34 = call i32 @init_timer(%struct.TYPE_3__* %33)
  %35 = load i32, i32* @emu8k_pcm_timer_func, align 4
  %36 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %40 = ptrtoint %struct.snd_emu8k_pcm* %39 to i64
  %41 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_4__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 bitcast (%struct.TYPE_4__* @emu8k_pcm_hw to i8*), i64 8, i1 false)
  %47 = load %struct.snd_emu8000*, %struct.snd_emu8000** %4, align 8
  %48 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LOOP_BLANK_SIZE, align 4
  %51 = mul nsw i32 %50, 3
  %52 = sub nsw i32 %49, %51
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 2
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %66 = load i32, i32* @HZ, align 4
  %67 = add nsw i32 1000000, %66
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @HZ, align 4
  %70 = sdiv i32 %68, %69
  %71 = load i32, i32* @UINT_MAX, align 4
  %72 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %64, i32 %65, i32 %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %19, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.snd_emu8000* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu8k_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
