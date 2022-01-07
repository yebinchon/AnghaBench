; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_rawmidi_file = type { i32 }
%struct.snd_rawmidi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_kernel_open(%struct.snd_card* %0, i32 %1, i32 %2, i32 %3, %struct.snd_rawmidi_file* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_file*, align 8
  %12 = alloca %struct.snd_rawmidi*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.snd_rawmidi_file* %4, %struct.snd_rawmidi_file** %11, align 8
  %14 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %11, align 8
  %15 = icmp ne %struct.snd_rawmidi_file* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %70

23:                                               ; preds = %5
  %24 = call i32 @mutex_lock(i32* @register_mutex)
  %25 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.snd_rawmidi* @snd_rawmidi_search(%struct.snd_card* %25, i32 %26)
  store %struct.snd_rawmidi* %27, %struct.snd_rawmidi** %12, align 8
  %28 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %29 = icmp eq %struct.snd_rawmidi* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = call i32 @mutex_unlock(i32* @register_mutex)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %36 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @try_module_get(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = call i32 @mutex_unlock(i32* @register_mutex)
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %70

46:                                               ; preds = %34
  %47 = call i32 @mutex_unlock(i32* @register_mutex)
  %48 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %11, align 8
  %55 = call i32 @rawmidi_open_priv(%struct.snd_rawmidi* %51, i32 %52, i32 %53, %struct.snd_rawmidi_file* %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %57 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %46
  %62 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @module_put(i32 %66)
  br label %68

68:                                               ; preds = %61, %46
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %42, %30, %20
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_rawmidi* @snd_rawmidi_search(%struct.snd_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rawmidi_open_priv(%struct.snd_rawmidi*, i32, i32, %struct.snd_rawmidi_file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
