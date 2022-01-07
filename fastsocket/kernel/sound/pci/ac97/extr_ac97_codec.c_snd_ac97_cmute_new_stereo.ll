; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmute_new_stereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmute_new_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ac97 = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32 }

@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_ac97*)* @snd_ac97_cmute_new_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_cmute_new_stereo(%struct.snd_card* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.snd_ac97* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ac97*, align 8
  %14 = alloca %struct.snd_kcontrol*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca %struct.snd_kcontrol_new, align 4
  %20 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_ac97* %5, %struct.snd_ac97** %13, align 8
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %115

26:                                               ; preds = %6
  store i16 -32768, i16* %18, align 2
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %27, i32 %28)
  store i16 %29, i16* %16, align 2
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %34 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32, %26
  %40 = load i16, i16* %16, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, 32896
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %17, align 2
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i16, i16* %17, align 2
  %47 = call i32 @snd_ac97_write(%struct.snd_ac97* %44, i32 %45, i16 zeroext %46)
  %48 = load i16, i16* %17, align 2
  %49 = zext i16 %48 to i32
  %50 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %50, i32 %51)
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i16 -32640, i16* %18, align 2
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i16, i16* %18, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp eq i32 %59, 32896
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @AC97_DOUBLE(i8* %62, i32 %63, i32 15, i32 7, i32 1, i32 1)
  %65 = bitcast %struct.snd_kcontrol_new* %19 to i64*
  store i64 %64, i64* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 1073741824
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %74 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %78 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %19, %struct.snd_ac97* %77)
  store %struct.snd_kcontrol* %78, %struct.snd_kcontrol** %14, align 8
  br label %97

79:                                               ; preds = %57
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @AC97_SINGLE(i8* %80, i32 %81, i32 15, i32 1, i32 1)
  %83 = bitcast %struct.snd_kcontrol_new* %20 to i64*
  store i64 %82, i64* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 1073741824
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %92 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %96 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %20, %struct.snd_ac97* %95)
  store %struct.snd_kcontrol* %96, %struct.snd_kcontrol** %14, align 8
  br label %97

97:                                               ; preds = %90, %72
  %98 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %99 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %100 = call i32 @snd_ctl_add(%struct.snd_card* %98, %struct.snd_kcontrol* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %115

105:                                              ; preds = %97
  %106 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i16, i16* %16, align 2
  %109 = zext i16 %108 to i32
  %110 = load i16, i16* %18, align 2
  %111 = zext i16 %110 to i32
  %112 = or i32 %109, %111
  %113 = trunc i32 %112 to i16
  %114 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %106, i32 %107, i16 zeroext %113)
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %105, %103, %25
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i32) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i16 zeroext) #1

declare dso_local i64 @AC97_DOUBLE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ac97*) #1

declare dso_local i64 @AC97_SINGLE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
