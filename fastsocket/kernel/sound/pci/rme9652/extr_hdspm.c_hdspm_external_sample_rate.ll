; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_hdspm_external_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_hdspm_external_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i64 }

@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_timecodeRegister = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_WORD = common dso_local global i32 0, align 4
@HDSPM_AES32_wcLock = common dso_local global i32 0, align 4
@HDSPM_AES32_wcFreq_bit = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_AES1 = common dso_local global i32 0, align 4
@HDSPM_AES32_AUTOSYNC_FROM_AES8 = common dso_local global i32 0, align 4
@HDSPM_LockAES = common dso_local global i32 0, align 4
@HDSPM_wcLock = common dso_local global i32 0, align 4
@HDSPM_SelSyncRef0 = common dso_local global i32 0, align 4
@HDSPM_wcFreqMask = common dso_local global i32 0, align 4
@HDSPM_SelSyncRefMask = common dso_local global i32 0, align 4
@HDSPM_SelSyncRef_WORD = common dso_local global i32 0, align 4
@HDSPM_madiLock = common dso_local global i32 0, align 4
@HDSPM_madiFreqMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_external_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_external_sample_rate(%struct.hdspm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  %12 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %1
  %17 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %18 = load i32, i32* @HDSPM_statusRegister2, align 4
  %19 = call i32 @hdspm_read(%struct.hdspm* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %21 = load i32, i32* @HDSPM_statusRegister, align 4
  %22 = call i32 @hdspm_read(%struct.hdspm* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %24 = load i32, i32* @HDSPM_timecodeRegister, align 4
  %25 = call i32 @hdspm_read(%struct.hdspm* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %27 = call i32 @hdspm_autosync_ref(%struct.hdspm* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_WORD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HDSPM_AES32_wcLock, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @HDSPM_AES32_wcFreq_bit, align 4
  %39 = lshr i32 %37, %38
  %40 = and i32 %39, 15
  %41 = call i32 @HDSPM_bit2freq(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %132

42:                                               ; preds = %31, %16
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_AES1, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_AES8, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @HDSPM_LockAES, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_AES1, align 4
  %55 = sub nsw i32 %53, %54
  %56 = ashr i32 %52, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @HDSPM_AES32_AUTOSYNC_FROM_AES1, align 4
  %63 = sub nsw i32 %61, %62
  %64 = mul nsw i32 4, %63
  %65 = lshr i32 %60, %64
  %66 = and i32 %65, 15
  %67 = call i32 @HDSPM_bit2freq(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %132

68:                                               ; preds = %50, %46, %42
  store i32 0, i32* %2, align 4
  br label %132

69:                                               ; preds = %1
  %70 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %71 = load i32, i32* @HDSPM_statusRegister2, align 4
  %72 = call i32 @hdspm_read(%struct.hdspm* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %74 = load i32, i32* @HDSPM_statusRegister, align 4
  %75 = call i32 @hdspm_read(%struct.hdspm* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @HDSPM_wcLock, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @HDSPM_SelSyncRef0, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HDSPM_wcFreqMask, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  switch i32 %89, label %96 [
    i32 133, label %90
    i32 132, label %91
    i32 131, label %92
    i32 130, label %93
    i32 129, label %94
    i32 128, label %95
  ]

90:                                               ; preds = %85
  store i32 32000, i32* %11, align 4
  br label %97

91:                                               ; preds = %85
  store i32 44100, i32* %11, align 4
  br label %97

92:                                               ; preds = %85
  store i32 48000, i32* %11, align 4
  br label %97

93:                                               ; preds = %85
  store i32 64000, i32* %11, align 4
  br label %97

94:                                               ; preds = %85
  store i32 88200, i32* %11, align 4
  br label %97

95:                                               ; preds = %85
  store i32 96000, i32* %11, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %95, %94, %93, %92, %91, %90
  br label %98

98:                                               ; preds = %97, %80, %69
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @HDSPM_SelSyncRefMask, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @HDSPM_SelSyncRef_WORD, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %2, align 4
  br label %132

109:                                              ; preds = %101, %98
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @HDSPM_madiLock, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @HDSPM_madiFreqMask, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  switch i32 %118, label %128 [
    i32 139, label %119
    i32 138, label %120
    i32 137, label %121
    i32 136, label %122
    i32 135, label %123
    i32 134, label %124
    i32 142, label %125
    i32 141, label %126
    i32 140, label %127
  ]

119:                                              ; preds = %114
  store i32 32000, i32* %11, align 4
  br label %129

120:                                              ; preds = %114
  store i32 44100, i32* %11, align 4
  br label %129

121:                                              ; preds = %114
  store i32 48000, i32* %11, align 4
  br label %129

122:                                              ; preds = %114
  store i32 64000, i32* %11, align 4
  br label %129

123:                                              ; preds = %114
  store i32 88200, i32* %11, align 4
  br label %129

124:                                              ; preds = %114
  store i32 96000, i32* %11, align 4
  br label %129

125:                                              ; preds = %114
  store i32 128000, i32* %11, align 4
  br label %129

126:                                              ; preds = %114
  store i32 176400, i32* %11, align 4
  br label %129

127:                                              ; preds = %114
  store i32 192000, i32* %11, align 4
  br label %129

128:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %127, %126, %125, %124, %123, %122, %121, %120, %119
  br label %130

130:                                              ; preds = %129, %109
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %107, %68, %59, %36
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @hdspm_autosync_ref(%struct.hdspm*) #1

declare dso_local i32 @HDSPM_bit2freq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
