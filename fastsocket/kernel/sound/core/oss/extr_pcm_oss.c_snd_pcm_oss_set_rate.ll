; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_rate(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_oss_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_runtime2*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, i64 %16
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %17, align 8
  store %struct.snd_pcm_substream* %18, %struct.snd_pcm_substream** %6, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %20 = icmp eq %struct.snd_pcm_substream* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %51

22:                                               ; preds = %11
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %25)
  store %struct.snd_pcm_runtime2* %26, %struct.snd_pcm_runtime2** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 1000
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1000, i32* %4, align 4
  br label %35

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 192000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 192000, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %8

54:                                               ; preds = %8
  %55 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %3, align 8
  %56 = call i32 @snd_pcm_oss_get_rate(%struct.snd_pcm_oss_file* %55)
  ret i32 %56
}

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

declare dso_local i32 @snd_pcm_oss_get_rate(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
