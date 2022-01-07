; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_la_rdi32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_macro_la_rdi32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@_SIMM16_LA = common dso_local global i32 0, align 4
@_VALUE_HI16 = common dso_local global i32 0, align 4
@score_pic = common dso_local global i64 0, align 8
@NO_PIC = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"ld_i32hi r%d, %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ld_i32lo r%d, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_macro_la_rdi32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_macro_la_rdi32(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @skip_whitespace(i8* %8)
  %10 = load i32, i32* @REG_TYPE_SCORE, align 4
  %11 = call i32 @reg_required_here(i8** %2, i32 20, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = call i32 @skip_past_comma(i8** %2)
  %17 = load i64, i64* @FAIL, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %91

21:                                               ; preds = %15
  %22 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %4, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  %26 = load i8*, i8** %2, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* @_SIMM16_LA, align 4
  %28 = call i32 @data_op2(i8** %2, i32 1, i32 %27)
  %29 = load i64, i64* @FAIL, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @end_of_line(i8* %33)
  store i32 1, i32* %7, align 4
  br label %87

35:                                               ; preds = %21
  %36 = call i32 @SET_INSN_ERROR(i32* null)
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %2, align 8
  %38 = load i32, i32* @_VALUE_HI16, align 4
  %39 = call i32 @data_op2(i8** %2, i32 1, i32 %38)
  %40 = load i64, i64* @FAIL, align 8
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @end_of_line(i8* %44)
  %46 = load i64, i64* @FAIL, align 8
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %35
  store i32 1, i32* %7, align 4
  br label %87

50:                                               ; preds = %43
  %51 = load i64, i64* @score_pic, align 8
  %52 = load i64, i64* @NO_PIC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 1, i32 0, i32 0), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %3, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @append_insn(i8* %25, i32 %61)
  %63 = load i64, i64* @FAIL, align 8
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %87

67:                                               ; preds = %57
  %68 = load i32, i32* %3, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69)
  %71 = load i32, i32* @TRUE, align 4
  %72 = call i32 @append_insn(i8* %25, i32 %71)
  %73 = load i64, i64* @FAIL, align 8
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  br label %87

77:                                               ; preds = %67
  br label %84

78:                                               ; preds = %54
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 1, i32 0, i32 0), align 4
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 1, i32 0, i32 0), align 4
  %83 = call i32 @build_la_pic(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %77
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @inst, i32 0, i32 0), align 4
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %86, %76, %66, %49, %32
  %88 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %92 [
    i32 0, label %90
    i32 1, label %91
  ]

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %20, %87, %90
  ret void

92:                                               ; preds = %87
  unreachable
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

declare dso_local i32 @SET_INSN_ERROR(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @append_insn(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @build_la_pic(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
