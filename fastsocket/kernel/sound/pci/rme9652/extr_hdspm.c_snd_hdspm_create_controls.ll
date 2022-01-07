; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32, i8* }
%struct.snd_card = type { i32 }
%struct.hdspm = type { %struct.snd_kcontrol**, i64 }
%struct.snd_kcontrol = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"AES Lock Status\00", align 1
@snd_hdspm_controls_aes32 = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_hdspm_controls_madi = common dso_local global %struct.snd_kcontrol_new* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"Chn\00", align 1
@snd_hdspm_playback_mixer = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@HDSPM_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdspm*)* @snd_hdspm_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_create_controls(%struct.snd_card* %0, %struct.hdspm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca %struct.snd_kcontrol_new, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdspm* %1, %struct.hdspm** %5, align 8
  %11 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %12 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %2
  %16 = call { i32, i8* } @HDSPM_AES_SYNC_CHECK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = bitcast %struct.snd_kcontrol_new* %10 to { i32, i8* }*
  %18 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i32, i8* } %16, 0
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i32, i8* } %16, 1
  store i8* %21, i8** %20, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %41, %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aes32, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %29 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_aes32, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %29, i64 %31
  %33 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %34 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %32, %struct.hdspm* %33)
  %35 = call i32 @snd_ctl_add(%struct.snd_card* %28, %struct.snd_kcontrol* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %118

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ule i32 %46, 8
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %52 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %53 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %10, %struct.hdspm* %52)
  %54 = call i32 @snd_ctl_add(%struct.snd_card* %51, %struct.snd_kcontrol* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %118

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %45

63:                                               ; preds = %45
  br label %88

64:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madi, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %67)
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %72 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_hdspm_controls_madi, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %72, i64 %74
  %76 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %77 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %75, %struct.hdspm* %76)
  %78 = call i32 @snd_ctl_add(%struct.snd_card* %71, %struct.snd_kcontrol* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %118

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %65

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %63
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.snd_kcontrol_new, %struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, i32 0, i32 1), align 8
  %89 = load i32, i32* @HDSPM_MAX_CHANNELS, align 4
  store i32 %89, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %114, %88
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.snd_kcontrol_new, %struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, i32 0, i32 0), align 8
  %97 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %98 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_hdspm_playback_mixer, %struct.hdspm* %97)
  store %struct.snd_kcontrol* %98, %struct.snd_kcontrol** %9, align 8
  %99 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %100 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %101 = call i32 @snd_ctl_add(%struct.snd_card* %99, %struct.snd_kcontrol* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %118

106:                                              ; preds = %94
  %107 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %108 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %109 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %108, i32 0, i32 0
  %110 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %110, i64 %112
  store %struct.snd_kcontrol* %107, %struct.snd_kcontrol** %113, align 8
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %90

117:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %104, %81, %57, %38
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local { i32, i8* } @HDSPM_AES_SYNC_CHECK(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
