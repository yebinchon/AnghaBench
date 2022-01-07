; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_resume_amp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_resume_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hda_amp_info = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hda_codec_resume_amp(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_amp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hda_amp_info, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %95, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %16
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.hda_amp_info* @snd_array_elem(%struct.TYPE_6__* %27, i32 %28)
  store %struct.hda_amp_info* %29, %struct.hda_amp_info** %4, align 8
  %30 = load %struct.hda_amp_info*, %struct.hda_amp_info** %4, align 8
  %31 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %95

36:                                               ; preds = %24
  %37 = load %struct.hda_amp_info*, %struct.hda_amp_info** %4, align 8
  %38 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.hda_amp_info*, %struct.hda_amp_info** %4, align 8
  %41 = bitcast %struct.hda_amp_info* %10 to i8*
  %42 = bitcast %struct.hda_amp_info* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %95

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 255
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 255
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 255
  store i32 %57, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %91, %49
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %10, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @INFO_AMP_VOL(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %91

70:                                               ; preds = %61
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = getelementptr inbounds %struct.hda_amp_info, %struct.hda_amp_info* %10, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @put_vol_mute(%struct.hda_codec* %74, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %88, i32 0, i32 0
  %90 = call i32 @mutex_lock(i32* %89)
  br label %91

91:                                               ; preds = %70, %69
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %58

94:                                               ; preds = %58
  br label %95

95:                                               ; preds = %94, %48, %35
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %16

98:                                               ; preds = %16
  %99 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %100 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_amp_info* @snd_array_elem(%struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INFO_AMP_VOL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_vol_mute(%struct.hda_codec*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
