; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_alloclbuspath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_alloclbuspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdif = type { i32 }

@SPLIT_PATH = common dso_local global i8 0, align 1
@E2SINK_MAX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"alloc path 0x%x->0x%x\0A\00", align 1
@lbusin2out = common dso_local global i8** null, align 8
@LS_MIXER_IN = common dso_local global i8 0, align 1
@DIGITAL_MIXER_IN0 = common dso_local global i8 0, align 1
@LS_SRC_DECIMATORM = common dso_local global i8 0, align 1
@LS_SRC_DECIMATOR = common dso_local global i8 0, align 1
@LS_SRC_INTERPOLATORM = common dso_local global i8 0, align 1
@LS_SRC_INTERPOLATOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdif*, i8, i8*, i8*, i8*)* @alloclbuspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloclbuspath(%struct.cmdif* %0, i8 zeroext %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.cmdif*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store %struct.cmdif* %0, %struct.cmdif** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  br label %14

14:                                               ; preds = %145, %5
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 255
  br i1 %18, label %19, label %146

19:                                               ; preds = %14
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @SPLIT_PATH, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  %28 = load i8, i8* %11, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @E2SINK_MAX, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %116

33:                                               ; preds = %19
  %34 = load i8, i8* %7, align 1
  %35 = load i8, i8* %11, align 1
  %36 = call i32 @snd_printdd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %34, i8 zeroext %35)
  %37 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %38 = load i8, i8* %7, align 1
  %39 = load i8, i8* %11, align 1
  %40 = call i32 @SEND_PSEL(%struct.cmdif* %37, i8 zeroext %38, i8 zeroext %39)
  %41 = load i8**, i8*** @lbusin2out, align 8
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %7, align 1
  %48 = load i8**, i8*** @lbusin2out, align 8
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %12, align 1
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @LS_MIXER_IN, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %33
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @DIGITAL_MIXER_IN0, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %9, align 8
  store i8 %69, i8* %70, align 1
  br label %71

71:                                               ; preds = %63, %60
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i8, i8* %12, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @LS_SRC_DECIMATORM, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @LS_SRC_DECIMATOR, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @LS_SRC_INTERPOLATORM, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load i8, i8* %12, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @LS_SRC_INTERPOLATOR, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90, %84, %78, %72
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 255
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i8, i8* %11, align 1
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8 %106, i8* %108, align 1
  br label %113

109:                                              ; preds = %99
  %110 = load i8, i8* %11, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %112, align 1
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %19
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %8, align 8
  %119 = load i8, i8* %117, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @SPLIT_PATH, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %116
  %126 = load i8*, i8** %8, align 8
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %132, %125
  %128 = load i8*, i8** %13, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 255
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %13, align 8
  br label %127

135:                                              ; preds = %127
  %136 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %137 = load i8, i8* %7, align 1
  %138 = zext i8 %137 to i32
  %139 = add nsw i32 %138, 1
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %13, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i8*, i8** %10, align 8
  call void @alloclbuspath(%struct.cmdif* %136, i8 zeroext %140, i8* %142, i8* %143, i8* %144)
  br label %145

145:                                              ; preds = %135, %116
  br label %14

146:                                              ; preds = %14
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @SEND_PSEL(%struct.cmdif*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
