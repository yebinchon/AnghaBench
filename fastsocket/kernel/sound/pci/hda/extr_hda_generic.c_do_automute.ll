; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_do_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_do_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64, i64 }

@PIN_IN = common dso_local global i32 0, align 4
@PIN_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i64*, i32)* @do_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_automute(%struct.hda_codec* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_gen_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %15, align 8
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %100, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %17
  %22 = load i64*, i64** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %103

30:                                               ; preds = %21
  %31 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %32 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* %11, align 8
  %40 = shl i64 1, %39
  %41 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %42 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %53

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = shl i64 1, %46
  %48 = xor i64 %47, -1
  %49 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %50 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @set_pin_eapd(%struct.hda_codec* %54, i64 %55, i32 %59)
  br label %100

61:                                               ; preds = %30
  %62 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %62, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @PIN_IN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %100

70:                                               ; preds = %61
  %71 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %72 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @PIN_HP, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %12, align 4
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @update_pin_ctl(%struct.hda_codec* %89, i64 %90, i32 %91)
  %93 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @set_pin_eapd(%struct.hda_codec* %93, i64 %94, i32 %98)
  br label %100

100:                                              ; preds = %88, %69, %53
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %17

103:                                              ; preds = %29, %17
  ret void
}

declare dso_local i32 @set_pin_eapd(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i64) #1

declare dso_local i32 @update_pin_ctl(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
