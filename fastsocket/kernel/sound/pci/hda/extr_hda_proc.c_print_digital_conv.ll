; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_digital_conv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_digital_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_VERB_GET_DIGI_CONVERT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"  Digital:\00", align 1
@AC_DIG1_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" Enabled\00", align 1
@AC_DIG1_V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" Validity\00", align 1
@AC_DIG1_VCFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" ValidityCfg\00", align 1
@AC_DIG1_EMPHASIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" Preemphasis\00", align 1
@AC_DIG1_COPYRIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c" Non-Copyright\00", align 1
@AC_DIG1_NONAUDIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" Non-Audio\00", align 1
@AC_DIG1_PROFESSIONAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" Pro\00", align 1
@AC_DIG1_LEVEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" GenLevel\00", align 1
@AC_DIG3_KAE = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" KAE\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"  Digital category: 0x%x\0A\00", align 1
@AC_DIG2_CC = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"  IEC Coding Type: 0x%x\0A\00", align 1
@AC_DIG3_ICT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_digital_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_digital_conv(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AC_VERB_GET_DIGI_CONVERT_1, align 4
  %13 = call i32 @snd_hda_codec_read(%struct.hda_codec* %10, i32 %11, i32 0, i32 %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %8, align 1
  %17 = load i32, i32* %7, align 4
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %9, align 1
  %20 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %21 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AC_DIG1_V, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AC_DIG1_VCFG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %44 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @AC_DIG1_EMPHASIS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @AC_DIG1_COPYRIGHT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @AC_DIG1_NONAUDIO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %68 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @AC_DIG1_PROFESSIONAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @AC_DIG1_LEVEL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i8, i8* %9, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @AC_DIG3_KAE, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %97 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %98 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %99 = load i8, i8* %8, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @AC_DIG2_CC, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %100, %102
  %104 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @AC_DIG3_ICT, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %110)
  ret void
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
