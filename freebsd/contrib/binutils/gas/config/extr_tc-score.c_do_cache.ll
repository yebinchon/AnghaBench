; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@_IMM5 = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"cache %d\00", align 1
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@_SIMM15 = common dso_local global i32 0, align 4
@BAD_ARGS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cache(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @skip_whitespace(i8* %4)
  %6 = load i32, i32* @_IMM5, align 4
  %7 = call i32 @data_op2(i8** %2, i32 20, i32 %6)
  %8 = load i64, i64* @FAIL, align 8
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = call i32 @skip_past_comma(i8** %2)
  %13 = load i64, i64* @FAIL, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %86

17:                                               ; preds = %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %19 = ashr i32 %18, 20
  %20 = and i32 %19, 31
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sprintf(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 91
  br i1 %28, label %29, label %84

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @skip_whitespace(i8* %32)
  %34 = load i32, i32* @REG_TYPE_SCORE, align 4
  %35 = call i32 @reg_required_here(i8** %2, i32 15, i32 %34)
  %36 = load i64, i64* @FAIL, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %86

40:                                               ; preds = %29
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @skip_whitespace(i8* %41)
  %43 = call i32 @skip_past_comma(i8** %2)
  %44 = load i64, i64* @FAIL, align 8
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = call i32 @SET_INSN_ERROR(i32* null)
  %49 = load i8*, i8** %2, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 93
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %86

55:                                               ; preds = %47
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %2, align 8
  br label %76

58:                                               ; preds = %40
  %59 = load i32, i32* @_SIMM15, align 4
  %60 = call i32 @exp_ldst_offset(i8** %2, i32 0, i32 %59)
  %61 = load i64, i64* @FAIL, align 8
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %86

65:                                               ; preds = %58
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @skip_whitespace(i8* %66)
  %68 = load i8*, i8** %2, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %2, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 93
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %86

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @end_of_line(i8* %77)
  %79 = load i64, i64* @FAIL, align 8
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %86

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %24
  %85 = load i8*, i8** @BAD_ARGS, align 8
  store i8* %85, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %86

86:                                               ; preds = %16, %39, %53, %64, %73, %82, %84, %83
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @SET_INSN_ERROR(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @exp_ldst_offset(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
