; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@sound_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sound_class = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@snd_minors = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_unregister_device(i32 %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @mutex_lock(i32* @sound_mutex)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @find_snd_minor(i32 %10, %struct.snd_card* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 @mutex_unlock(i32* @sound_mutex)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @sound_class, align 4
  %22 = load i32, i32* @major, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @MKDEV(i32 %22, i32 %23)
  %25 = call i32 @device_destroy(i32 %21, i32 %24)
  %26 = load i32**, i32*** @snd_minors, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load i32**, i32*** @snd_minors, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* null, i32** %35, align 8
  %36 = call i32 @mutex_unlock(i32* @sound_mutex)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %20, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_snd_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
