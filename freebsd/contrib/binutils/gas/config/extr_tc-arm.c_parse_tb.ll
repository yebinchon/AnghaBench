; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_tb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"'[' expected\00", align 1
@inst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@REG_TYPE_RN = common dso_local global i64 0, align 8
@reg_expected_msgs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"',' expected\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@SHIFT_LSL_IMMEDIATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid shift\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"']' expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tb(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = call i32 @skip_past_char(i8** %4, i8 signext 91)
  %9 = load i32, i32* @FAIL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %13 = load i32, i32* @FAIL, align 4
  store i32 %13, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load i64, i64* @REG_TYPE_RN, align 8
  %16 = call i32 @arm_reg_parse(i8** %4, i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @FAIL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8**, i8*** @reg_expected_msgs, align 8
  %21 = load i64, i64* @REG_TYPE_RN, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @_(i8* %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %25 = load i32, i32* @FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = call i32 @skip_past_comma(i8** %4)
  %32 = load i32, i32* @FAIL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %36 = load i32, i32* @FAIL, align 4
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %26
  %38 = load i64, i64* @REG_TYPE_RN, align 8
  %39 = call i32 @arm_reg_parse(i8** %4, i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @FAIL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8**, i8*** @reg_expected_msgs, align 8
  %44 = load i64, i64* @REG_TYPE_RN, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @_(i8* %46)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %48 = load i32, i32* @FAIL, align 4
  store i32 %48, i32* %2, align 4
  br label %85

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = call i32 @skip_past_comma(i8** %4)
  %55 = load i32, i32* @SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load i32, i32* @SHIFT_LSL_IMMEDIATE, align 4
  %59 = call i32 @parse_shift(i8** %4, i32 0, i32 %58)
  %60 = load i32, i32* @FAIL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @FAIL, align 4
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %57
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 2, i32 0, i32 0), align 8
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %69 = load i32, i32* @FAIL, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 1), align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %49
  %75 = call i32 @skip_past_char(i8** %4, i8 signext 93)
  %76 = load i32, i32* @FAIL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inst, i32 0, i32 0), align 8
  %80 = load i32, i32* @FAIL, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load i8*, i8** %4, align 8
  %83 = load i8**, i8*** %3, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* @SUCCESS, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %78, %67, %62, %42, %34, %19, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @skip_past_char(i8**, i8 signext) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @arm_reg_parse(i8**, i64) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @parse_shift(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
