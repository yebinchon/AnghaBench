; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audaac_validate_usr_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audaac_validate_usr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_audio_aac_config = type { i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }

@AUDIO_AAC_FORMAT_ADTS = common dso_local global i64 0, align 8
@AUDIO_AAC_FORMAT_RAW = common dso_local global i64 0, align 8
@AUDIO_AAC_FORMAT_PSUEDO_RAW = common dso_local global i64 0, align 8
@AUDIO_AAC_FORMAT_LOAS = common dso_local global i64 0, align 8
@AUDIO_AAC_OBJECT_LC = common dso_local global i64 0, align 8
@AUDIO_AAC_OBJECT_LTP = common dso_local global i64 0, align 8
@AUDIO_AAC_OBJECT_ERLC = common dso_local global i64 0, align 8
@AUDIO_AAC_SCA_DATA_RES_OFF = common dso_local global i64 0, align 8
@AUDIO_AAC_SCA_DATA_RES_ON = common dso_local global i64 0, align 8
@AUDIO_AAC_SEC_DATA_RES_OFF = common dso_local global i64 0, align 8
@AUDIO_AAC_SEC_DATA_RES_ON = common dso_local global i64 0, align 8
@AUDIO_AAC_SPEC_DATA_RES_OFF = common dso_local global i64 0, align 8
@AUDIO_AAC_SPEC_DATA_RES_ON = common dso_local global i64 0, align 8
@AUDIO_AAC_SBR_ON_FLAG_OFF = common dso_local global i64 0, align 8
@AUDIO_AAC_SBR_ON_FLAG_ON = common dso_local global i64 0, align 8
@AUDIO_AAC_SBR_PS_ON_FLAG_OFF = common dso_local global i64 0, align 8
@AUDIO_AAC_SBR_PS_ON_FLAG_ON = common dso_local global i64 0, align 8
@AUDIO_AAC_DUAL_MONO_PL_SR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_audio_aac_config*)* @audaac_validate_usr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audaac_validate_usr_config(%struct.msm_audio_aac_config* %0) #0 {
  %2 = alloca %struct.msm_audio_aac_config*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_audio_aac_config* %0, %struct.msm_audio_aac_config** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %5 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AUDIO_AAC_FORMAT_ADTS, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %11 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AUDIO_AAC_FORMAT_RAW, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %17 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUDIO_AAC_FORMAT_PSUEDO_RAW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %23 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AUDIO_AAC_FORMAT_LOAS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %149

28:                                               ; preds = %21, %15, %9, %1
  %29 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %30 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AUDIO_AAC_OBJECT_LC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %36 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AUDIO_AAC_OBJECT_LTP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %42 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AUDIO_AAC_OBJECT_ERLC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %149

47:                                               ; preds = %40, %34, %28
  %48 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %49 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUDIO_AAC_OBJECT_ERLC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %47
  %54 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %55 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %149

59:                                               ; preds = %53
  %60 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %61 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUDIO_AAC_SCA_DATA_RES_OFF, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %67 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AUDIO_AAC_SCA_DATA_RES_ON, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %149

72:                                               ; preds = %65, %59
  %73 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %74 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AUDIO_AAC_SEC_DATA_RES_OFF, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %80 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUDIO_AAC_SEC_DATA_RES_ON, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %149

85:                                               ; preds = %78, %72
  %86 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %87 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AUDIO_AAC_SPEC_DATA_RES_OFF, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %93 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AUDIO_AAC_SPEC_DATA_RES_ON, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %149

98:                                               ; preds = %91, %85
  br label %109

99:                                               ; preds = %47
  %100 = load i64, i64* @AUDIO_AAC_SEC_DATA_RES_OFF, align 8
  %101 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %102 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* @AUDIO_AAC_SCA_DATA_RES_OFF, align 8
  %104 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %105 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* @AUDIO_AAC_SPEC_DATA_RES_OFF, align 8
  %107 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %108 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %98
  %110 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %111 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AUDIO_AAC_SBR_ON_FLAG_OFF, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %117 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AUDIO_AAC_SBR_ON_FLAG_ON, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %149

122:                                              ; preds = %115, %109
  %123 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %124 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AUDIO_AAC_SBR_PS_ON_FLAG_OFF, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %130 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AUDIO_AAC_SBR_PS_ON_FLAG_ON, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %149

135:                                              ; preds = %128, %122
  %136 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %137 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AUDIO_AAC_DUAL_MONO_PL_SR, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %149

142:                                              ; preds = %135
  %143 = load %struct.msm_audio_aac_config*, %struct.msm_audio_aac_config** %2, align 8
  %144 = getelementptr inbounds %struct.msm_audio_aac_config, %struct.msm_audio_aac_config* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %149

148:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %147, %141, %134, %121, %97, %84, %71, %58, %46, %27
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
