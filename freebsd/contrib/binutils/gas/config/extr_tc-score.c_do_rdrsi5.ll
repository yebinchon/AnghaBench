; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdrsi5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdrsi5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@_IMM5 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_rdrsi5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rdrsi5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = load i32, i32* @REG_TYPE_SCORE, align 4
  %6 = call i32 @reg_required_here(i8** %2, i32 20, i32 %5)
  %7 = load i64, i64* @FAIL, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = call i32 @skip_past_comma(i8** %2)
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @REG_TYPE_SCORE, align 4
  %17 = call i32 @reg_required_here(i8** %2, i32 15, i32 %16)
  %18 = load i64, i64* @FAIL, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = call i32 @skip_past_comma(i8** %2)
  %23 = load i64, i64* @FAIL, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @_IMM5, align 4
  %28 = call i32 @data_op2(i8** %2, i32 10, i32 %27)
  %29 = load i64, i64* @FAIL, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @end_of_line(i8* %33)
  %35 = load i64, i64* @FAIL, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26, %21, %15, %10, %1
  br label %68

39:                                               ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %41 = ashr i32 %40, 20
  %42 = and i32 %41, 31
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %44 = ashr i32 %43, 15
  %45 = and i32 %44, 31
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %49 = icmp ne i32 %48, 32768
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %52 = ashr i32 %51, 15
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %57 = ashr i32 %56, 10
  %58 = and i32 %57, 31
  %59 = shl i32 %58, 3
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %61 = ashr i32 %60, 15
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %68

67:                                               ; preds = %50, %47, %39
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %68

68:                                               ; preds = %38, %67, %55
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
