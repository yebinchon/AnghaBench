; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_set_recmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_set_recmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SRC__MIC = common dso_local global i32 0, align 4
@SRC__LINE = common dso_local global i32 0, align 4
@SRC__CD = common dso_local global i32 0, align 4
@SUBMDL_ALS007 = common dso_local global i32 0, align 4
@ALS007_RECORD_SRC = common dso_local global i32 0, align 4
@ALS007_LINE = common dso_local global i8 0, align 1
@ALS007_CD = common dso_local global i8 0, align 1
@ALS007_SYNTH = common dso_local global i8 0, align 1
@ALS007_MIC = common dso_local global i8 0, align 1
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@sb16_recmasks_L = common dso_local global i8* null, align 8
@sb16_recmasks_R = common dso_local global i8* null, align 8
@SB16_IMASK_L = common dso_local global i32 0, align 4
@SB16_IMASK_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @set_recmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_recmask(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %159 [
    i32 133, label %17
    i32 136, label %17
    i32 135, label %17
    i32 132, label %17
    i32 134, label %80
  ]

17:                                               ; preds = %2, %2, %2, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 136
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = call i32 @ess_set_recmask(%struct.TYPE_6__* %23, i32* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %159

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 129
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 130
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 131
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %36, %33, %30, %27
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 129
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 130
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 131
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 129, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49, %46, %43
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %74 [
    i32 129, label %62
    i32 130, label %66
    i32 131, label %70
  ]

62:                                               ; preds = %60
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32, i32* @SRC__MIC, align 4
  %65 = call i32 @set_recsrc(%struct.TYPE_6__* %63, i32 %64)
  br label %78

66:                                               ; preds = %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* @SRC__LINE, align 4
  %69 = call i32 @set_recsrc(%struct.TYPE_6__* %67, i32 %68)
  br label %78

70:                                               ; preds = %60
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = load i32, i32* @SRC__CD, align 4
  %73 = call i32 @set_recsrc(%struct.TYPE_6__* %71, i32 %72)
  br label %78

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = load i32, i32* @SRC__MIC, align 4
  %77 = call i32 @set_recsrc(%struct.TYPE_6__* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %70, %66, %62
  br label %79

79:                                               ; preds = %78, %53
  br label %159

80:                                               ; preds = %2
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 129, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SUBMDL_ALS007, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  switch i32 %91, label %107 [
    i32 130, label %92
    i32 131, label %97
    i32 128, label %102
  ]

92:                                               ; preds = %90
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load i32, i32* @ALS007_RECORD_SRC, align 4
  %95 = load i8, i8* @ALS007_LINE, align 1
  %96 = call i32 @sb_setmixer(%struct.TYPE_6__* %93, i32 %94, i8 zeroext %95)
  br label %112

97:                                               ; preds = %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = load i32, i32* @ALS007_RECORD_SRC, align 4
  %100 = load i8, i8* @ALS007_CD, align 1
  %101 = call i32 @sb_setmixer(%struct.TYPE_6__* %98, i32 %99, i8 zeroext %100)
  br label %112

102:                                              ; preds = %90
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = load i32, i32* @ALS007_RECORD_SRC, align 4
  %105 = load i8, i8* @ALS007_SYNTH, align 1
  %106 = call i32 @sb_setmixer(%struct.TYPE_6__* %103, i32 %104, i8 zeroext %105)
  br label %112

107:                                              ; preds = %90
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = load i32, i32* @ALS007_RECORD_SRC, align 4
  %110 = load i8, i8* @ALS007_MIC, align 1
  %111 = call i32 @sb_setmixer(%struct.TYPE_6__* %108, i32 %109, i8 zeroext %110)
  br label %112

112:                                              ; preds = %107, %102, %97, %92
  br label %158

113:                                              ; preds = %84
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %154, %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load i8*, i8** @sb16_recmasks_L, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %7, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %132, %130
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %7, align 1
  %135 = load i8*, i8** @sb16_recmasks_R, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %8, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, %140
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %8, align 1
  br label %145

145:                                              ; preds = %124, %118
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = load i32, i32* @SB16_IMASK_L, align 4
  %148 = load i8, i8* %7, align 1
  %149 = call i32 @sb_setmixer(%struct.TYPE_6__* %146, i32 %147, i8 zeroext %148)
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = load i32, i32* @SB16_IMASK_R, align 4
  %152 = load i8, i8* %8, align 1
  %153 = call i32 @sb_setmixer(%struct.TYPE_6__* %150, i32 %151, i8 zeroext %152)
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %114

157:                                              ; preds = %114
  br label %158

158:                                              ; preds = %157, %112
  br label %159

159:                                              ; preds = %2, %158, %79, %26
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  ret i32 %165
}

declare dso_local i32 @ess_set_recmask(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @set_recsrc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sb_setmixer(%struct.TYPE_6__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
