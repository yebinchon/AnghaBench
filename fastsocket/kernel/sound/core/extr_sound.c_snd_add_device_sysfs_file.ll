; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_add_device_sysfs_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_add_device_sysfs_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.snd_card = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sound_mutex = common dso_local global i32 0, align 4
@snd_minors = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_add_device_sysfs_file(i32 %0, %struct.snd_card* %1, i32 %2, %struct.device_attribute* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.device_attribute* %3, %struct.device_attribute** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = call i32 @mutex_lock(i32* @sound_mutex)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @find_snd_minor(i32 %15, %struct.snd_card* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @snd_minors, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %11, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %11, align 8
  %32 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %33 = call i32 @device_create_file(%struct.device* %31, %struct.device_attribute* %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %21, %4
  %35 = call i32 @mutex_unlock(i32* @sound_mutex)
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_snd_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
