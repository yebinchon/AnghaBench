; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_activate_amp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_activate_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, i32, i32, i32)* @activate_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_amp(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @is_active_nid(%struct.hda_codec* %19, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %57

26:                                               ; preds = %18, %6
  %27 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @query_amp_caps(%struct.hda_codec* %27, i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @get_amp_val_to_activate(%struct.hda_codec* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @get_amp_mask_to_modify(%struct.hda_codec* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  br label %57

46:                                               ; preds = %26
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %15, align 4
  %50 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @snd_hda_codec_amp_stereo(%struct.hda_codec* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %45, %25
  ret void
}

declare dso_local i64 @is_active_nid(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @query_amp_caps(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_amp_val_to_activate(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @get_amp_mask_to_modify(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_amp_stereo(%struct.hda_codec*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
