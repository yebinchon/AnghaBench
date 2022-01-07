; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_resume_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_resume_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hda_cache_head = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_codec_resume_cache(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_cache_head*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %11
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.hda_cache_head* @snd_array_elem(%struct.TYPE_4__* %22, i32 %23)
  store %struct.hda_cache_head* %24, %struct.hda_cache_head** %4, align 8
  %25 = load %struct.hda_cache_head*, %struct.hda_cache_head** %4, align 8
  %26 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %55

31:                                               ; preds = %19
  %32 = load %struct.hda_cache_head*, %struct.hda_cache_head** %4, align 8
  %33 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %55

37:                                               ; preds = %31
  %38 = load %struct.hda_cache_head*, %struct.hda_cache_head** %4, align 8
  %39 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @get_cmd_cache_nid(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @get_cmd_cache_cmd(i32 %46)
  %48 = load %struct.hda_cache_head*, %struct.hda_cache_head** %4, align 8
  %49 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snd_hda_codec_write(%struct.hda_codec* %43, i32 %45, i32 0, i32 %47, i32 %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %53 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  br label %55

55:                                               ; preds = %37, %36, %30
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_cache_head* @snd_array_elem(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @get_cmd_cache_nid(i32) #1

declare dso_local i32 @get_cmd_cache_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
