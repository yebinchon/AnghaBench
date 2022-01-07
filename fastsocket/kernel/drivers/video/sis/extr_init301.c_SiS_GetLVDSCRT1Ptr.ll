; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetLVDSCRT1Ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetLVDSCRT1Ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_4__ = type { i16, i16 }

@SetCRT2ToTV = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@TVSetPALM = common dso_local global i32 0, align 4
@ModeVGA = common dso_local global i64 0, align 8
@TVSetCHOverScan = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@DontExpandLCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SiS_Private*, i16, i16, i16, i16*, i16*)* @SiS_GetLVDSCRT1Ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SiS_GetLVDSCRT1Ptr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3, i16* %4, i16* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.SiS_Private*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %8, align 8
  store i16 %1, i16* %9, align 2
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16* %4, i16** %12, align 8
  store i16* %5, i16** %13, align 8
  store i16 0, i16* %14, align 2
  store i32 1, i32* %15, align 4
  %16 = load i16, i16* %9, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp sle i32 %17, 19
  br i1 %18, label %19, label %37

19:                                               ; preds = %6
  %20 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %21 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %20, i32 0, i32 9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %14, align 2
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 9
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i16, i16* %10, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 2
  %36 = load i16*, i16** %12, align 8
  store i16 %35, i16* %36, align 2
  br label %55

37:                                               ; preds = %6
  %38 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %39 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %38, i32 0, i32 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i16, i16* %10, align 2
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %14, align 2
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 7
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i16, i16* %11, align 2
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 2
  %54 = load i16*, i16** %12, align 8
  store i16 %53, i16* %54, align 2
  br label %55

55:                                               ; preds = %37, %19
  %56 = load i16*, i16** %12, align 8
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 63
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 2
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %55
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SetCRT2ToTV, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %65
  %73 = load i16*, i16** %13, align 8
  store i16 80, i16* %73, align 2
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TVSetPAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %72
  %81 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %82 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TVSetPALM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %80
  %88 = load i16*, i16** %13, align 8
  store i16 82, i16* %88, align 2
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ModeVGA, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i16*, i16** %13, align 8
  store i16 84, i16* %100, align 2
  br label %101

101:                                              ; preds = %99, %94
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %80, %72
  %104 = load i16*, i16** %13, align 8
  %105 = load i16, i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %106, 84
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @TVSetCHOverScan, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i16*, i16** %13, align 8
  %117 = load i16, i16* %116, align 2
  %118 = add i16 %117, 1
  store i16 %118, i16* %116, align 2
  br label %119

119:                                              ; preds = %115, %108
  br label %120

120:                                              ; preds = %119, %103
  br label %172

121:                                              ; preds = %65, %55
  %122 = load i16*, i16** %13, align 8
  store i16 0, i16* %122, align 2
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %136 [
    i32 131, label %126
    i32 130, label %128
    i32 129, label %130
    i32 128, label %132
    i32 132, label %134
  ]

126:                                              ; preds = %121
  %127 = load i16*, i16** %13, align 8
  store i16 50, i16* %127, align 2
  store i32 0, i32* %15, align 4
  br label %137

128:                                              ; preds = %121
  %129 = load i16*, i16** %13, align 8
  store i16 14, i16* %129, align 2
  br label %137

130:                                              ; preds = %121
  %131 = load i16*, i16** %13, align 8
  store i16 18, i16* %131, align 2
  br label %137

132:                                              ; preds = %121
  %133 = load i16*, i16** %13, align 8
  store i16 10, i16* %133, align 2
  br label %137

134:                                              ; preds = %121
  %135 = load i16*, i16** %13, align 8
  store i16 26, i16* %135, align 2
  br label %137

136:                                              ; preds = %121
  store i32 1, i32* %7, align 4
  br label %173

137:                                              ; preds = %134, %132, %130, %128, %126
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load i16, i16* %14, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* @HalfDCLK, align 2
  %144 = zext i16 %143 to i32
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i16*, i16** %13, align 8
  %149 = load i16, i16* %148, align 2
  %150 = add i16 %149, 1
  store i16 %150, i16* %148, align 2
  br label %151

151:                                              ; preds = %147, %140
  br label %152

152:                                              ; preds = %151, %137
  %153 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %154 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 132
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %8, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DontExpandLCD, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i16*, i16** %13, align 8
  %166 = load i16, i16* %165, align 2
  %167 = zext i16 %166 to i32
  %168 = add nsw i32 %167, 2
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %165, align 2
  br label %170

170:                                              ; preds = %164, %157
  br label %171

171:                                              ; preds = %170, %152
  br label %172

172:                                              ; preds = %171, %120
  store i32 1, i32* %7, align 4
  br label %173

173:                                              ; preds = %172, %136
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
