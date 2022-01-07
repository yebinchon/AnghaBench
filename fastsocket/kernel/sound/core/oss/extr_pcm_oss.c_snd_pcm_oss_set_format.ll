; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AFMT_QUERY = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, i32)* @snd_pcm_oss_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_set_format(%struct.snd_pcm_oss_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_runtime2*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AFMT_QUERY, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %2
  %14 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %15 = call i32 @snd_pcm_oss_get_formats(%struct.snd_pcm_oss_file* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AFMT_U8, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %20
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %32, i32 0, i32 0
  %34 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %34, i64 %36
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %37, align 8
  store %struct.snd_pcm_substream* %38, %struct.snd_pcm_substream** %8, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %40 = icmp eq %struct.snd_pcm_substream* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %62

42:                                               ; preds = %31
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %45)
  store %struct.snd_pcm_runtime2* %46, %struct.snd_pcm_runtime2** %9, align 8
  %47 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %9, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %9, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %9, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %42
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %7, align 4
  br label %28

65:                                               ; preds = %28
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %68 = call i32 @snd_pcm_oss_get_format(%struct.snd_pcm_oss_file* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @snd_pcm_oss_get_formats(%struct.snd_pcm_oss_file*) #1

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

declare dso_local i32 @snd_pcm_oss_get_format(%struct.snd_pcm_oss_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
