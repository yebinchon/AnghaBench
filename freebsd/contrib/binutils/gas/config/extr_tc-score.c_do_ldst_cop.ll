; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_cop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_ldst_cop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@REG_TYPE_SCORE_CR = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@_IMM10_RSHIFT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BAD_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_ldst_cop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ldst_cop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = load i32, i32* @REG_TYPE_SCORE_CR, align 4
  %6 = call i32 @reg_required_here(i8** %2, i32 15, i32 %5)
  %7 = load i64, i64* @FAIL, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = call i32 @skip_past_comma(i8** %2)
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %63

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 91
  br i1 %20, label %21, label %61

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @skip_whitespace(i8* %24)
  %26 = load i32, i32* @REG_TYPE_SCORE, align 4
  %27 = call i32 @reg_required_here(i8** %2, i32 20, i32 %26)
  %28 = load i64, i64* @FAIL, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %63

32:                                               ; preds = %21
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @skip_whitespace(i8* %33)
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 93
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load i32, i32* @_IMM10_RSHIFT_2, align 4
  %42 = call i32 @exp_ldst_offset(i8** %2, i32 5, i32 %41)
  %43 = load i64, i64* @FAIL, align 8
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %63

47:                                               ; preds = %40
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @skip_whitespace(i8* %48)
  %50 = load i8*, i8** %2, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %2, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 93
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %63

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @end_of_line(i8* %59)
  br label %63

61:                                               ; preds = %16
  %62 = load i32, i32* @BAD_ARGS, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %15, %31, %46, %55, %61, %58
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @exp_ldst_offset(i8**, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
