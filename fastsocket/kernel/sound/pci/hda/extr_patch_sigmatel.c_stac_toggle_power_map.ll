; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_toggle_power_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_toggle_power_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i64*, i32 }

@AC_VERB_IDT_SET_POWER_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64, i32, i32)* @stac_toggle_power_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_toggle_power_map(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigmatel_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %13, align 8
  store %struct.sigmatel_spec* %14, %struct.sigmatel_spec** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %33, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %23 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %81

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %10, align 4
  %46 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %47 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %60

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %63 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %69 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %75 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AC_VERB_IDT_SET_POWER_MAP, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @snd_hda_codec_write(%struct.hda_codec* %73, i32 %76, i32 0, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %66
  br label %81

81:                                               ; preds = %42, %80, %60
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
