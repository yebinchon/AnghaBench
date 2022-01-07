; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i64)* @snd_pcm_oss_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_pcm_oss_bytes(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %20 = call %struct.TYPE_4__* @oss_runtime(%struct.snd_pcm_runtime* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %3, align 8
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %29 = call %struct.TYPE_4__* @oss_runtime(%struct.snd_pcm_runtime* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = mul nsw i32 %33, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @div_u64(i32 %37, i64 %38)
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %27, %25
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local %struct.TYPE_4__* @oss_runtime(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
