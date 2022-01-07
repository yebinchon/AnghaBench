; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_single_cap_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_single_cap_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_kcontrol_new = type { i8* }

@HDA_CTL_WIDGET_MUTE = common dso_local global i32 0, align 4
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s Capture %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Capture %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cap_single_sw_put = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Inverted %s Capture %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Inverted Capture %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, i32, i32, i32)* @add_single_cap_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_single_cap_ctl(%struct.hda_codec* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca [44 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %21, align 8
  store %struct.hda_gen_spec* %22, %struct.hda_gen_spec** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @HDA_CTL_WIDGET_MUTE, align 4
  br label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %34, i8** %17, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 3
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %112

42:                                               ; preds = %29
  %43 = load i8*, i8** %9, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %46, i32 44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48)
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %51, i32 44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %56 = load i32, i32* %16, align 4
  %57 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @amp_val_replace_channels(i32 %59, i32 %60)
  %62 = call %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec* %55, i32 %56, i8* %57, i32 %58, i32 %61)
  store %struct.snd_kcontrol_new* %62, %struct.snd_kcontrol_new** %19, align 8
  %63 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %19, align 8
  %64 = icmp ne %struct.snd_kcontrol_new* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %112

68:                                               ; preds = %54
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** @cap_single_sw_put, align 8
  %73 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %19, align 8
  %74 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  br label %112

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %83, i32 44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %85)
  br label %91

87:                                               ; preds = %79
  %88 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %88, i32 44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds [44 x i8], [44 x i8]* %15, i64 0, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @amp_val_replace_channels(i32 %96, i32 2)
  %98 = call %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec* %92, i32 %93, i8* %94, i32 %95, i32 %97)
  store %struct.snd_kcontrol_new* %98, %struct.snd_kcontrol_new** %19, align 8
  %99 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %19, align 8
  %100 = icmp ne %struct.snd_kcontrol_new* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %112

104:                                              ; preds = %91
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** @cap_single_sw_put, align 8
  %109 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %19, align 8
  %110 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %101, %78, %65, %41
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec*, i32, i8*, i32, i32) #1

declare dso_local i32 @amp_val_replace_channels(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
