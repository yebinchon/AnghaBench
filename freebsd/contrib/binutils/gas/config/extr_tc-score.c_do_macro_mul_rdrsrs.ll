; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_mul_rdrsrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_mul_rdrsrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32* }

@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@university_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERR_FOR_SCORE5U_MUL_DIV = common dso_local global i32 0, align 4
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@BAD_ARGS = common dso_local global i32* null, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"remu\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mul r%d, r%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mfceh  r%d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mulu r%d, r%d\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s r%d, r%d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"mfcel  r%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_macro_mul_rdrsrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_macro_mul_rdrsrs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @university_version, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ERR_FOR_SCORE5U_MUL_DIV, align 4
  %20 = call i32 @as_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strcpy(i8* %15, i8* %22)
  store i8* %15, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @skip_whitespace(i8* %24)
  %26 = load i32, i32* @REG_TYPE_SCORE, align 4
  %27 = call i32 @reg_required_here(i8** %6, i32 -1, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i64, i64* @FAIL, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %21
  %32 = call i32 @skip_past_comma(i8** %6)
  %33 = load i64, i64* @FAIL, align 8
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @REG_TYPE_SCORE, align 4
  %38 = call i32 @reg_required_here(i8** %6, i32 -1, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i64, i64* @FAIL, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %31, %21
  %43 = load i32*, i32** @BAD_ARGS, align 8
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 8
  store i32 1, i32* %9, align 4
  br label %132

44:                                               ; preds = %36
  %45 = call i32 @skip_past_comma(i8** %6)
  %46 = load i64, i64* @FAIL, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49
  %58 = load i32*, i32** @BAD_ARGS, align 8
  %59 = call i32 @SET_INSN_ERROR(i32* %58)
  br label %64

60:                                               ; preds = %53
  %61 = call i32 @SET_INSN_ERROR(i32* null)
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 @do_rsrs(i8* %62)
  br label %64

64:                                               ; preds = %60, %57
  store i32 1, i32* %9, align 4
  br label %132

65:                                               ; preds = %44
  %66 = call i32 @SET_INSN_ERROR(i32* null)
  %67 = load i32, i32* @REG_TYPE_SCORE, align 4
  %68 = call i32 @reg_required_here(i8** %6, i32 -1, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i64, i64* @FAIL, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @end_of_line(i8* %73)
  %75 = load i64, i64* @FAIL, align 8
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %65
  store i32 1, i32* %9, align 4
  br label %132

79:                                               ; preds = %72
  %80 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %10, align 8
  %83 = alloca i8, i64 %81, align 16
  store i64 %81, i64* %11, align 8
  %84 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %111

93:                                               ; preds = %79
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %110

103:                                              ; preds = %93
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103, %97
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @append_insn(i8* %15, i32 %112)
  %114 = load i64, i64* @FAIL, align 8
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 1, i32* %9, align 4
  br label %126

118:                                              ; preds = %111
  %119 = load i32, i32* @TRUE, align 4
  %120 = call i32 @append_insn(i8* %83, i32 %119)
  %121 = load i64, i64* @FAIL, align 8
  %122 = trunc i64 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %9, align 4
  br label %126

125:                                              ; preds = %118
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %124, %117
  %127 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %9, align 4
  switch i32 %128, label %132 [
    i32 0, label %129
  ]

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %126, %78, %64, %42
  %133 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %9, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @as_warn(i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i32 @reg_required_here(i8**, i32, i32) #2

declare dso_local i32 @skip_past_comma(i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @SET_INSN_ERROR(i32*) #2

declare dso_local i32 @do_rsrs(i8*) #2

declare dso_local i32 @end_of_line(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @append_insn(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
