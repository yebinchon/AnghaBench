; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_subdivide1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_subdivide1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_oss_set_subdivide1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_subdivide1(%struct.snd_pcm_substream* %0, i32 %1) #0 {
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
  br label %69

10:                                               ; preds = %2
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %13)
  store %struct.snd_pcm_runtime2* %14, %struct.snd_pcm_runtime2** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %10
  %28 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 8
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 16
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %54, %51, %48, %45, %42
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %6, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %57, %39, %25, %9
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
