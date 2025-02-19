; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_flush_pcm_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_flush_pcm_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCM_BUF_MAX_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*)* @audqcelp_flush_pcm_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audqcelp_flush_pcm_buf(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca i64, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @PCM_BUF_MAX_COUNT, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.audio*, %struct.audio** %2, align 8
  %10 = getelementptr inbounds %struct.audio, %struct.audio* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load %struct.audio*, %struct.audio** %2, align 8
  %20 = getelementptr inbounds %struct.audio, %struct.audio* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.audio*, %struct.audio** %2, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
