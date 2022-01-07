; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_open_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, i32, %struct.snd_pcm_file* }
%struct.snd_pcm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcm_release_private = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.snd_pcm*, i32, %struct.snd_pcm_file**)* @snd_pcm_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_open_file(%struct.file* %0, %struct.snd_pcm* %1, i32 %2, %struct.snd_pcm_file** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_file**, align 8
  %10 = alloca %struct.snd_pcm_file*, align 8
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.snd_pcm* %1, %struct.snd_pcm** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.snd_pcm_file** %3, %struct.snd_pcm_file*** %9, align 8
  %13 = load %struct.snd_pcm_file**, %struct.snd_pcm_file*** %9, align 8
  %14 = icmp ne %struct.snd_pcm_file** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load %struct.snd_pcm_file**, %struct.snd_pcm_file*** %9, align 8
  store %struct.snd_pcm_file* null, %struct.snd_pcm_file** %16, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = call i32 @snd_pcm_open_substream(%struct.snd_pcm* %18, i32 %19, %struct.file* %20, %struct.snd_pcm_substream** %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %17
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.snd_pcm_file* @kzalloc(i32 8, i32 %27)
  store %struct.snd_pcm_file* %28, %struct.snd_pcm_file** %10, align 8
  %29 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  %30 = icmp eq %struct.snd_pcm_file* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %33 = call i32 @snd_pcm_release_substream(%struct.snd_pcm_substream* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %61

36:                                               ; preds = %26
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %38 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %38, i32 0, i32 0
  store %struct.snd_pcm_substream* %37, %struct.snd_pcm_substream** %39, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 2
  store %struct.snd_pcm_file* %45, %struct.snd_pcm_file** %47, align 8
  %48 = load i32, i32* @pcm_release_private, align 4
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.snd_pcm_file* %52, %struct.snd_pcm_file** %54, align 8
  %55 = load %struct.snd_pcm_file**, %struct.snd_pcm_file*** %9, align 8
  %56 = icmp ne %struct.snd_pcm_file** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %10, align 8
  %59 = load %struct.snd_pcm_file**, %struct.snd_pcm_file*** %9, align 8
  store %struct.snd_pcm_file* %58, %struct.snd_pcm_file** %59, align 8
  br label %60

60:                                               ; preds = %57, %51
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %31, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @snd_pcm_open_substream(%struct.snd_pcm*, i32, %struct.file*, %struct.snd_pcm_substream**) #1

declare dso_local %struct.snd_pcm_file* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_release_substream(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
