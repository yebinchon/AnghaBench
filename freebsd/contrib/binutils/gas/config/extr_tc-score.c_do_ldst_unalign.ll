; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_unalign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_unalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@university_version = common dso_local global i32 0, align 4
@ERR_FOR_SCORE5U_ATOMIC = common dso_local global i8* null, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"missing +\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@LDST_UNALIGN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s register same as write-back base\00", align 1
@UA_LCE = common dso_local global i32 0, align 4
@UA_LCW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@BAD_ARGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_ldst_unalign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ldst_unalign(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @university_version, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** @ERR_FOR_SCORE5U_ATOMIC, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @skip_whitespace(i8* %11)
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 91
  br i1 %16, label %17, label %53

17:                                               ; preds = %10
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @skip_whitespace(i8* %20)
  %22 = load i32, i32* @REG_TYPE_SCORE, align 4
  %23 = call i32 @reg_required_here(i8** %2, i32 15, i32 %22)
  %24 = load i64, i64* @FAIL, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %141

28:                                               ; preds = %17
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 93
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 43
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

42:                                               ; preds = %34
  br label %45

43:                                               ; preds = %28
  %44 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

45:                                               ; preds = %42
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @end_of_line(i8* %46)
  %48 = load i64, i64* @FAIL, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %141

52:                                               ; preds = %45
  br label %141

53:                                               ; preds = %10
  %54 = load i32, i32* @REG_TYPE_SCORE, align 4
  %55 = call i32 @reg_required_here(i8** %2, i32 20, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i64, i64* @FAIL, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = call i32 @skip_past_comma(i8** %2)
  %61 = load i64, i64* @FAIL, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %53
  br label %141

65:                                               ; preds = %59
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @skip_whitespace(i8* %66)
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %2, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 91
  br i1 %72, label %73, label %138

73:                                               ; preds = %65
  %74 = load i8*, i8** %2, align 8
  %75 = call i32 @skip_whitespace(i8* %74)
  %76 = load i32, i32* @REG_TYPE_SCORE, align 4
  %77 = call i32 @reg_required_here(i8** %2, i32 15, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i64, i64* @FAIL, align 8
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %141

82:                                               ; preds = %73
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %3, align 4
  %87 = load i8*, i8** %2, align 8
  %88 = call i32 @skip_whitespace(i8* %87)
  %89 = load i8*, i8** %2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %2, align 8
  %91 = load i8, i8* %89, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 93
  br i1 %93, label %94, label %135

94:                                               ; preds = %82
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %96 = load i32, i32* @LDST_UNALIGN_MASK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %5, align 4
  %98 = load i8*, i8** %2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %2, align 8
  %100 = load i8, i8* %98, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 43
  br i1 %102, label %103, label %125

103:                                              ; preds = %94
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @UA_LCE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @UA_LCW, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112, %106
  %118 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %121

119:                                              ; preds = %112
  %120 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i8* [ %118, %117 ], [ %120, %119 ]
  %123 = call i32 @as_warn(i8* %107, i8* %122)
  br label %124

124:                                              ; preds = %121, %103
  br label %127

125:                                              ; preds = %94
  %126 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %126, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

127:                                              ; preds = %124
  %128 = load i8*, i8** %2, align 8
  %129 = call i32 @end_of_line(i8* %128)
  %130 = load i64, i64* @FAIL, align 8
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %141

134:                                              ; preds = %127
  br label %137

135:                                              ; preds = %82
  %136 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %136, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

137:                                              ; preds = %134
  br label %140

138:                                              ; preds = %65
  %139 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %139, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %141

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %8, %27, %40, %43, %51, %64, %81, %125, %133, %135, %138, %140, %52
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @end_of_line(i8*) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @as_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
