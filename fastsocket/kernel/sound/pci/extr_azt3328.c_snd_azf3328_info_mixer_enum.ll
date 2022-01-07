; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_info_mixer_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_azt3328.c_snd_azf3328_info_mixer_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.azf3328_mixer_reg = type { i64, i32, i32 }

@snd_azf3328_info_mixer_enum.texts1 = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Mic1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Mic2\00", align 1
@snd_azf3328_info_mixer_enum.texts2 = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@snd_azf3328_info_mixer_enum.texts3 = internal constant [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Mix Mono\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@snd_azf3328_info_mixer_enum.texts4 = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [7 x i8] c"pre 3D\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"post 3D\00", align 1
@SNDRV_CTL_ELEM_TYPE_ENUMERATED = common dso_local global i32 0, align 4
@IDX_MIXER_REC_SELECT = common dso_local global i64 0, align 8
@IDX_MIXER_ADVCTL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_azf3328_info_mixer_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_info_mixer_enum(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.azf3328_mixer_reg, align 8
  %6 = alloca i8**, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  store i8** null, i8*** %6, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg* %5, i32 %9)
  %11 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_ENUMERATED, align 4
  %12 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IDX_MIXER_REC_SELECT, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 2, i32 1
  %20 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %34, 1
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %39, 1
  %41 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IDX_MIXER_ADVCTL2, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %56 [
    i32 8, label %53
    i32 9, label %54
    i32 15, label %55
  ]

53:                                               ; preds = %50
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @snd_azf3328_info_mixer_enum.texts1, i64 0, i64 0), i8*** %6, align 8
  br label %56

54:                                               ; preds = %50
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @snd_azf3328_info_mixer_enum.texts2, i64 0, i64 0), i8*** %6, align 8
  br label %56

55:                                               ; preds = %50
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @snd_azf3328_info_mixer_enum.texts4, i64 0, i64 0), i8*** %6, align 8
  br label %56

56:                                               ; preds = %50, %55, %54, %53
  br label %64

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.azf3328_mixer_reg, %struct.azf3328_mixer_reg* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IDX_MIXER_REC_SELECT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @snd_azf3328_info_mixer_enum.texts3, i64 0, i64 0), i8*** %6, align 8
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8**, i8*** %6, align 8
  %71 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %72 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %70, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcpy(i32 %69, i8* %78)
  ret i32 0
}

declare dso_local i32 @snd_azf3328_mixer_reg_decode(%struct.azf3328_mixer_reg*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
