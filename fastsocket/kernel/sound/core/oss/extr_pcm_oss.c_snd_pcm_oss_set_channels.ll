; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_channels(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime2*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ugt i32 %13, 128
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %25, i64 %27
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %28, align 8
  store %struct.snd_pcm_substream* %29, %struct.snd_pcm_substream** %7, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %31 = icmp eq %struct.snd_pcm_substream* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %53

33:                                               ; preds = %22
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %36)
  store %struct.snd_pcm_runtime2* %37, %struct.snd_pcm_runtime2** %8, align 8
  %38 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %8, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %8, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %33
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %58 = call i32 @snd_pcm_oss_get_channels(%struct.snd_pcm_oss_file* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

declare dso_local i32 @snd_pcm_oss_get_channels(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
