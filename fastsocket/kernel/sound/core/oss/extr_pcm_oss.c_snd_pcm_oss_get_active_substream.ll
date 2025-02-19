; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_active_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_get_active_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_oss_file = type { %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_oss_file*, %struct.snd_pcm_substream**)* @snd_pcm_oss_get_active_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_get_active_substream(%struct.snd_pcm_oss_file* %0, %struct.snd_pcm_substream** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_oss_file*, align 8
  %5 = alloca %struct.snd_pcm_substream**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_oss_file* %0, %struct.snd_pcm_oss_file** %4, align 8
  store %struct.snd_pcm_substream** %1, %struct.snd_pcm_substream*** %5, align 8
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %8, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load %struct.snd_pcm_oss_file*, %struct.snd_pcm_oss_file** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_oss_file, %struct.snd_pcm_oss_file* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, i64 %18
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %9, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %22 = icmp eq %struct.snd_pcm_substream* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %47

24:                                               ; preds = %13
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %26 = icmp eq %struct.snd_pcm_substream* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %8, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_4__* @oss_runtime(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %40 = call i32 @snd_pcm_oss_change_params(%struct.snd_pcm_substream* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %52 = icmp ne %struct.snd_pcm_substream* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %5, align 8
  %58 = icmp ne %struct.snd_pcm_substream** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %61 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %5, align 8
  store %struct.snd_pcm_substream* %60, %struct.snd_pcm_substream** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %53, %43
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @oss_runtime(i32) #1

declare dso_local i32 @snd_pcm_oss_change_params(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
