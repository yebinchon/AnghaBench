; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_attach_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_attach_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_bus* }
%struct.hda_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.hda_bus*, %struct.hda_codec*, %struct.hda_pcm*)* }
%struct.hda_pcm = type { %struct.hda_pcm_stream*, i32 }
%struct.hda_pcm_stream = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.hda_pcm*)* @snd_hda_attach_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_attach_pcm(%struct.hda_codec* %0, %struct.hda_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca %struct.hda_bus*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_pcm* %1, %struct.hda_pcm** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_bus*, %struct.hda_bus** %11, align 8
  store %struct.hda_bus* %12, %struct.hda_bus** %6, align 8
  %13 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %14 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %29, i32 0, i32 0
  %31 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %31, i64 %33
  store %struct.hda_pcm_stream* %34, %struct.hda_pcm_stream** %7, align 8
  %35 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %36 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %42 = call i32 @set_pcm_default_values(%struct.hda_codec* %40, %struct.hda_pcm_stream* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %54 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.hda_bus*, %struct.hda_codec*, %struct.hda_pcm*)*, i32 (%struct.hda_bus*, %struct.hda_codec*, %struct.hda_pcm*)** %55, align 8
  %57 = load %struct.hda_bus*, %struct.hda_bus** %6, align 8
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %60 = call i32 %56(%struct.hda_bus* %57, %struct.hda_codec* %58, %struct.hda_pcm* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %45, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @set_pcm_default_values(%struct.hda_codec*, %struct.hda_pcm_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
