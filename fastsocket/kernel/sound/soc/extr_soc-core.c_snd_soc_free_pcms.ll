; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_free_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_free_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, i32, i64, i32, i64, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64 }

@dev_attr_codec_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_soc_free_pcms(%struct.snd_soc_device* %0) #0 {
  %2 = alloca %struct.snd_soc_device*, align 8
  %3 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_device* %0, %struct.snd_soc_device** %2, align 8
  %4 = load %struct.snd_soc_device*, %struct.snd_soc_device** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  store %struct.snd_soc_codec* %8, %struct.snd_soc_codec** %3, align 8
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %13 = call i32 @soc_cleanup_codec_debugfs(%struct.snd_soc_codec* %12)
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @snd_card_free(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.snd_soc_device*, %struct.snd_soc_device** %2, align 8
  %25 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_remove_file(i32 %26, i32* @dev_attr_codec_reg)
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc_cleanup_codec_debugfs(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_card_free(i64) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
