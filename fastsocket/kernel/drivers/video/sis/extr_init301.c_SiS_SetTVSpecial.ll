; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetTVSpecial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetTVSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i32 }

@VB_SIS30xBLV = common dso_local global i32 0, align 4
@SetCRT2ToTVNoHiVision = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@TVSetPAL = common dso_local global i32 0, align 4
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@__const.SiS_SetTVSpecial.specialtv = private unnamed_addr constant [21 x i8] c"\A7\07\F2n\17\8BsS\13@4\F4c\BB\CCzX\E4s\DA\13", align 16
@SetCRT2ToYPbPr525750 = common dso_local global i32 0, align 4
@TVSetPALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16)* @SiS_SetTVSpecial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetTVSpecial(%struct.SiS_Private* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.SiS_Private*, align 8
  %4 = alloca i16, align 2
  %5 = alloca [21 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %9 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VB_SIS30xBLV, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %149

15:                                               ; preds = %2
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SetCRT2ToTVNoHiVision, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %149

23:                                               ; preds = %15
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TVSetYPbPr525p, align 4
  %28 = load i32, i32* @TVSetYPbPr750p, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %149

33:                                               ; preds = %23
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TVSetPAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %106, label %40

40:                                               ; preds = %33
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TVSetNTSC1024, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %40
  %48 = bitcast [21 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %48, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.SiS_SetTVSpecial.specialtv, i32 0, i32 0), i64 21, i1 false)
  store i32 28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %62, %47
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 48
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %54 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @SiS_SetReg(i32 %55, i32 %56, i8 zeroext %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SiS_SetReg(i32 %70, i32 67, i8 zeroext 114)
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SetCRT2ToYPbPr525750, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %67
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TVSetPALM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SiS_SetReg(i32 %88, i32 1, i8 zeroext 20)
  %90 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %91 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SiS_SetReg(i32 %92, i32 2, i8 zeroext 27)
  br label %103

94:                                               ; preds = %78
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SiS_SetReg(i32 %97, i32 1, i8 zeroext 20)
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SiS_SetReg(i32 %101, i32 2, i8 zeroext 26)
  br label %103

103:                                              ; preds = %94, %85
  br label %104

104:                                              ; preds = %103, %67
  br label %105

105:                                              ; preds = %104, %40
  br label %149

106:                                              ; preds = %33
  %107 = load i16, i16* %4, align 2
  %108 = zext i16 %107 to i32
  %109 = icmp eq i32 %108, 56
  br i1 %109, label %130, label %110

110:                                              ; preds = %106
  %111 = load i16, i16* %4, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %112, 74
  br i1 %113, label %130, label %114

114:                                              ; preds = %110
  %115 = load i16, i16* %4, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %116, 100
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = load i16, i16* %4, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp eq i32 %120, 82
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load i16, i16* %4, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp eq i32 %124, 88
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i16, i16* %4, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp eq i32 %128, 92
  br i1 %129, label %130, label %139

130:                                              ; preds = %126, %122, %118, %114, %110, %106
  %131 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %132 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @SiS_SetReg(i32 %133, i32 1, i8 zeroext 27)
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @SiS_SetReg(i32 %137, i32 2, i8 zeroext 84)
  br label %148

139:                                              ; preds = %126
  %140 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %141 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @SiS_SetReg(i32 %142, i32 1, i8 zeroext 26)
  %144 = load %struct.SiS_Private*, %struct.SiS_Private** %3, align 8
  %145 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SiS_SetReg(i32 %146, i32 2, i8 zeroext 83)
  br label %148

148:                                              ; preds = %139, %130
  br label %149

149:                                              ; preds = %14, %22, %32, %148, %105
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
