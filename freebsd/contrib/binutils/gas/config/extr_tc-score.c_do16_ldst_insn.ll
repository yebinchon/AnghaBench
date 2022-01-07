; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_ldst_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_ldst_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FAIL = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"missing ]\00", align 1
@BAD_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do16_ldst_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do16_ldst_insn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @skip_whitespace(i8* %4)
  %6 = call i32 @reglow_required_here(i8** %2, i32 8)
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
  br label %64

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 91
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @skip_whitespace(i8* %24)
  %26 = call i32 @reglow_required_here(i8** %2, i32 4)
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @FAIL, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %64

31:                                               ; preds = %21
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @skip_whitespace(i8* %32)
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 93
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @end_of_line(i8* %40)
  %42 = load i64, i64* @FAIL, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %64

46:                                               ; preds = %39
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 15
  %50 = shl i32 %49, 20
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %52 = ashr i32 %51, 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 15
  %55 = or i32 %50, %54
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %58

58:                                               ; preds = %46
  br label %61

59:                                               ; preds = %31
  %60 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 4
  br label %61

61:                                               ; preds = %59, %58
  br label %64

62:                                               ; preds = %16
  %63 = load i32, i32* @BAD_ARGS, align 4
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 3), align 4
  br label %64

64:                                               ; preds = %15, %30, %45, %62, %61
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reglow_required_here(i8**, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @end_of_line(i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
