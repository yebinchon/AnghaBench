; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_alloc_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_get_alloc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_cache_head = type { i64, i64, i64, i64 }
%struct.hda_cache_rec = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hda_cache_head* (%struct.hda_cache_rec*, i64)* @get_alloc_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hda_cache_head* @get_alloc_hash(%struct.hda_cache_rec* %0, i64 %1) #0 {
  %3 = alloca %struct.hda_cache_head*, align 8
  %4 = alloca %struct.hda_cache_rec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hda_cache_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hda_cache_rec* %0, %struct.hda_cache_rec** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call %struct.hda_cache_head* @get_hash(%struct.hda_cache_rec* %9, i64 %10)
  store %struct.hda_cache_head* %11, %struct.hda_cache_head** %6, align 8
  %12 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %13 = icmp ne %struct.hda_cache_head* %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %2
  %15 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_cache_rec, %struct.hda_cache_rec* %15, i32 0, i32 1
  %17 = call %struct.hda_cache_head* @snd_array_new(i32* %16)
  store %struct.hda_cache_head* %17, %struct.hda_cache_head** %6, align 8
  %18 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %19 = icmp ne %struct.hda_cache_head* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.hda_cache_head* null, %struct.hda_cache_head** %3, align 8
  br label %55

21:                                               ; preds = %14
  %22 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %23 = getelementptr inbounds %struct.hda_cache_rec, %struct.hda_cache_rec* %22, i32 0, i32 1
  %24 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %25 = call i64 @snd_array_index(i32* %23, %struct.hda_cache_head* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %28 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %30 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %32 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %35 = getelementptr inbounds %struct.hda_cache_rec, %struct.hda_cache_rec* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = call i64 @ARRAY_SIZE(i64* %36)
  %38 = urem i64 %33, %37
  store i64 %38, i64* %7, align 8
  %39 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %40 = getelementptr inbounds %struct.hda_cache_rec, %struct.hda_cache_rec* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  %46 = getelementptr inbounds %struct.hda_cache_head, %struct.hda_cache_head* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.hda_cache_rec*, %struct.hda_cache_rec** %4, align 8
  %49 = getelementptr inbounds %struct.hda_cache_rec, %struct.hda_cache_rec* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %21, %2
  %54 = load %struct.hda_cache_head*, %struct.hda_cache_head** %6, align 8
  store %struct.hda_cache_head* %54, %struct.hda_cache_head** %3, align 8
  br label %55

55:                                               ; preds = %53, %20
  %56 = load %struct.hda_cache_head*, %struct.hda_cache_head** %3, align 8
  ret %struct.hda_cache_head* %56
}

declare dso_local %struct.hda_cache_head* @get_hash(%struct.hda_cache_rec*, i64) #1

declare dso_local %struct.hda_cache_head* @snd_array_new(i32*) #1

declare dso_local i64 @snd_array_index(i32*, %struct.hda_cache_head*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
