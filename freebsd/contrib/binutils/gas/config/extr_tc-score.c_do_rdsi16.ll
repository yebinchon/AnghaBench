; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdsi16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdsi16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@_SIMM16 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_rdsi16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rdsi16(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = load i32, i32* @REG_TYPE_SCORE, align 4
  %6 = call i32 @reg_required_here(i8** %2, i32 20, i32 %5)
  %7 = load i64, i64* @FAIL, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = call i32 @skip_past_comma(i8** %2)
  %12 = load i64, i64* @FAIL, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @_SIMM16, align 4
  %17 = call i32 @data_op2(i8** %2, i32 1, i32 %16)
  %18 = load i64, i64* @FAIL, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @end_of_line(i8* %22)
  %24 = load i64, i64* @FAIL, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15, %10, %1
  br label %62

28:                                               ; preds = %21
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %30 = and i32 %29, 34340864
  %31 = icmp eq i32 %30, 34340864
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %34 = ashr i32 %33, 20
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %39 = and i32 %38, 130560
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %32
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %54

42:                                               ; preds = %37
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %44 = ashr i32 %43, 1
  %45 = and i32 %44, 255
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %49 = ashr i32 %48, 20
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %54

54:                                               ; preds = %42, %41
  br label %62

55:                                               ; preds = %28
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %57 = ashr i32 %56, 20
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 16
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 32768, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %27, %61, %54
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
