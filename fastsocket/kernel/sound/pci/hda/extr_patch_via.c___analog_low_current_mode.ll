; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c___analog_low_current_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c___analog_low_current_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.via_spec* }
%struct.via_spec = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @__analog_low_current_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__analog_low_current_mode(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.via_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.via_spec*, %struct.via_spec** %10, align 8
  store %struct.via_spec* %11, %struct.via_spec** %5, align 8
  %12 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  %13 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = call i64 @is_aa_path_mute(%struct.hda_codec* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  %23 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %16
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  %34 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %82

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  %44 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.via_spec*, %struct.via_spec** %5, align 8
  %46 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %73 [
    i32 135, label %48
    i32 136, label %48
    i32 134, label %53
    i32 132, label %53
    i32 133, label %53
    i32 138, label %58
    i32 128, label %63
    i32 129, label %63
    i32 131, label %63
    i32 137, label %68
    i32 130, label %68
  ]

48:                                               ; preds = %41, %41
  store i32 3952, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 0
  store i32 %52, i32* %8, align 4
  br label %74

53:                                               ; preds = %41, %41, %41
  store i32 3955, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 81, i32 225
  store i32 %57, i32* %8, align 4
  br label %74

58:                                               ; preds = %41
  store i32 3955, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 29
  store i32 %62, i32* %8, align 4
  br label %74

63:                                               ; preds = %41, %41, %41
  store i32 3987, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 224
  store i32 %67, i32* %8, align 4
  br label %74

68:                                               ; preds = %41, %41
  store i32 3970, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 224
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %41
  br label %82

74:                                               ; preds = %68, %63, %58, %53, %48
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @snd_hda_codec_write(%struct.hda_codec* %75, i32 %78, i32 0, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %73, %40
  ret void
}

declare dso_local i64 @is_aa_path_mute(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
