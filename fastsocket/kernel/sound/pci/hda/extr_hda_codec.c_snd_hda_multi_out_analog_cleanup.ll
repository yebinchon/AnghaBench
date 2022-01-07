; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i32, i64, i64, i64*, i64*, i64, i64* }

@HDA_DIG_ANALOG_DUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_multi_out_analog_cleanup(%struct.hda_codec* %0, %struct.hda_multi_out* %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_multi_out*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %4, align 8
  %7 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %8 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %7, i32 0, i32 6
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %13 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %17, i64 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %29 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %35 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %33, i64 %36)
  br label %38

38:                                               ; preds = %32, %27
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %42 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i64* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  %47 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %48 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %58 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %57, i32 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %56, i64 %63)
  br label %65

65:                                               ; preds = %55, %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %39

69:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %73 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @ARRAY_SIZE(i64* %74)
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %79 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %89 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec* %87, i64 %94)
  br label %96

96:                                               ; preds = %86, %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %70

100:                                              ; preds = %70
  %101 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %102 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %101, i32 0, i32 0
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %105 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %110 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HDA_DIG_ANALOG_DUP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %116 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %117 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @cleanup_dig_out_stream(%struct.hda_codec* %115, i64 %118)
  %120 = load %struct.hda_multi_out*, %struct.hda_multi_out** %4, align 8
  %121 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %114, %108, %100
  %123 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %124 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  ret i32 0
}

declare dso_local i32 @snd_hda_codec_cleanup_stream(%struct.hda_codec*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cleanup_dig_out_stream(%struct.hda_codec*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
