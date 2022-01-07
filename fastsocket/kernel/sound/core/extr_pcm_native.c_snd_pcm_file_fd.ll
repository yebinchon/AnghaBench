; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_file_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_file_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@snd_major = common dso_local global i64 0, align 8
@SNDRV_DEVICE_TYPE_PCM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_PCM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (i32)* @snd_pcm_file_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @snd_pcm_file_fd(i32 %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.file* @fget(i32 %7)
  store %struct.file* %8, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = icmp ne %struct.file* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.file* null, %struct.file** %2, align 8
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISCHR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i64 @imajor(%struct.inode* %25)
  %27 = load i64, i64* @snd_major, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %12
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = call i32 @fput(%struct.file* %30)
  store %struct.file* null, %struct.file** %2, align 8
  br label %49

32:                                               ; preds = %24
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @iminor(%struct.inode* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_PLAYBACK, align 4
  %37 = call i32 @snd_lookup_minor_data(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SNDRV_DEVICE_TYPE_PCM_CAPTURE, align 4
  %42 = call i32 @snd_lookup_minor_data(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = call i32 @fput(%struct.file* %45)
  store %struct.file* null, %struct.file** %2, align 8
  br label %49

47:                                               ; preds = %39, %32
  %48 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %48, %struct.file** %2, align 8
  br label %49

49:                                               ; preds = %47, %44, %29, %11
  %50 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %50
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i64 @imajor(%struct.inode*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @snd_lookup_minor_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
