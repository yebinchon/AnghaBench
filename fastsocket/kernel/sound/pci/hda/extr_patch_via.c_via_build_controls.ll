; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_build_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i32, i32*, i64 }

@via_pin_power_ctl_enum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @via_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.via_spec*, %struct.via_spec** %8, align 8
  store %struct.via_spec* %9, %struct.via_spec** %4, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = call i32 @snd_hda_gen_build_controls(%struct.hda_codec* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %18 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* @via_pin_power_ctl_enum, align 4
  %23 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %24 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %27 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  store i32 %22, i32* %31, align 4
  br label %32

32:                                               ; preds = %21, %16
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %36 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %42 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_hda_add_new_ctls(%struct.hda_codec* %40, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %33

57:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @snd_hda_gen_build_controls(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_add_new_ctls(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
