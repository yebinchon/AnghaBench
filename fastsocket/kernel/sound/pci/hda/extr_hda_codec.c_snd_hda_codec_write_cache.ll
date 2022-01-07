; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_write_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_write_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hda_cache_head = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_cache_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %5
  %22 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @snd_hda_codec_write(%struct.hda_codec* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %67

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %35, 8
  %37 = or i32 %34, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 255
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @build_cmd_cache_key(i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %49 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %48, i32 0, i32 2
  %50 = load i32, i32* %14, align 4
  %51 = call %struct.hda_cache_head* @get_alloc_hash(i32* %49, i32 %50)
  store %struct.hda_cache_head* %51, %struct.hda_cache_head** %13, align 8
  %52 = load %struct.hda_cache_head*, %struct.hda_cache_head** %13, align 8
  %53 = icmp ne %struct.hda_cache_head* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.hda_cache_head*, %struct.hda_cache_head** %13, align 8
  %57 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.hda_cache_head*, %struct.hda_cache_head** %13, align 8
  %60 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %33
  %62 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %30
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @build_cmd_cache_key(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_cache_head* @get_alloc_hash(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
