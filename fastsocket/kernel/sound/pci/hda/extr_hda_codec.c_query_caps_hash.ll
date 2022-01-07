; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_query_caps_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_query_caps_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_amp_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INFO_AMP_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32 (%struct.hda_codec*, i32, i32)*)* @query_caps_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_caps_hash(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.hda_codec*, i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.hda_codec*, i32, i32)*, align 8
  %12 = alloca %struct.hda_amp_info*, align 8
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (%struct.hda_codec*, i32, i32)* %4, i32 (%struct.hda_codec*, i32, i32)** %11, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.hda_amp_info* @get_alloc_amp_hash(%struct.hda_codec* %17, i32 %18)
  store %struct.hda_amp_info* %19, %struct.hda_amp_info** %12, align 8
  %20 = load %struct.hda_amp_info*, %struct.hda_amp_info** %12, align 8
  %21 = icmp ne %struct.hda_amp_info* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 0, i32* %6, align 4
  br label %56

26:                                               ; preds = %5
  %27 = load %struct.hda_amp_info*, %struct.hda_amp_info** %12, align 8
  %28 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INFO_AMP_CAPS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %26
  %35 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32 (%struct.hda_codec*, i32, i32)*, i32 (%struct.hda_codec*, i32, i32)** %11, align 8
  %39 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 %38(%struct.hda_codec* %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @write_caps_hash(%struct.hda_codec* %43, i32 %44, i32 %45)
  br label %54

47:                                               ; preds = %26
  %48 = load %struct.hda_amp_info*, %struct.hda_amp_info** %12, align 8
  %49 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %52 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %22
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_amp_info* @get_alloc_amp_hash(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @write_caps_hash(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
