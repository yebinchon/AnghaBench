; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_fragment1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_fragment1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_oss_set_fragment1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_fragment1(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime2*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = icmp eq %struct.snd_pcm_substream* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

10:                                               ; preds = %2
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %13)
  store %struct.snd_pcm_runtime2* %14, %struct.snd_pcm_runtime2** %6, align 8
  %15 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %10
  %21 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %10
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65535
  %32 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 65535
  %38 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 4, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 2, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %26, %9
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
