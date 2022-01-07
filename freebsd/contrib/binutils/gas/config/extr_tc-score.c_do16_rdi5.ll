; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_rdi5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do16_rdi5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@FAIL = common dso_local global i64 0, align 8
@_IMM5 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do16_rdi5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do16_rdi5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = call i32 @reglow_required_here(i8** %2, i32 8)
  %6 = load i64, i64* @FAIL, align 8
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = call i32 @skip_past_comma(i8** %2)
  %11 = load i64, i64* @FAIL, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @_IMM5, align 4
  %16 = call i32 @data_op2(i8** %2, i32 3, i32 %15)
  %17 = load i64, i64* @FAIL, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @end_of_line(i8* %21)
  %23 = load i64, i64* @FAIL, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %9, %1
  br label %44

27:                                               ; preds = %20
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 15
  %31 = shl i32 %30, 20
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 15
  %36 = or i32 %31, %35
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 4
  %38 = ashr i32 %37, 3
  %39 = and i32 %38, 31
  %40 = shl i32 %39, 10
  %41 = or i32 %36, %40
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 2), align 4
  br label %44

44:                                               ; preds = %26, %27
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reglow_required_here(i8**, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @data_op2(i8**, i32, i32) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
