; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_setup_dig_out_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_setup_dig_out_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64*, i64 }
%struct.hda_spdif_out = type { i32 }

@AC_VERB_GET_STREAM_FORMAT = common dso_local global i32 0, align 4
@AC_DIG1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64, i32, i32)* @setup_dig_out_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_dig_out_stream(%struct.hda_codec* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_spdif_out*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec* %13, i64 %14)
  store %struct.hda_spdif_out* %15, %struct.hda_spdif_out** %9, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @AC_VERB_GET_STREAM_FORMAT, align 4
  %19 = call i32 @snd_hda_codec_read(%struct.hda_codec* %16, i64 %17, i32 0, i32 %18, i32 0)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %26 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %24, %4
  %36 = phi i1 [ false, %24 ], [ false, %4 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %44 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = and i32 %48, 255
  %50 = call i32 @set_dig_out_convert(%struct.hda_codec* %41, i64 %42, i32 %49, i32 -1)
  br label %51

51:                                               ; preds = %40, %35
  %52 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %52, i64 %53, i32 %54, i32 0, i32 %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %51
  %62 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %12, align 8
  br label %65

65:                                               ; preds = %76, %61
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %71 = load i64*, i64** %12, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %70, i64 %72, i32 %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %69
  %77 = load i64*, i64** %12, align 8
  %78 = getelementptr inbounds i64, i64* %77, i32 1
  store i64* %78, i64** %12, align 8
  br label %65

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %9, align 8
  %87 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = call i32 @set_dig_out_convert(%struct.hda_codec* %84, i64 %85, i32 %89, i32 -1)
  br label %91

91:                                               ; preds = %83, %80
  ret void
}

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @set_dig_out_convert(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
