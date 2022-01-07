; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdsrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_do_rdsrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@REG_TYPE_SCORE_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_rdsrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rdsrs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @skip_whitespace(i8* %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 80
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @REG_TYPE_SCORE, align 4
  %10 = call i32 @reg_required_here(i8** %2, i32 20, i32 %9)
  %11 = load i64, i64* @FAIL, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = call i32 @skip_past_comma(i8** %2)
  %16 = load i64, i64* @FAIL, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* @REG_TYPE_SCORE_SR, align 4
  %21 = call i32 @reg_required_here(i8** %2, i32 10, i32 %20)
  %22 = load i64, i64* @FAIL, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @end_of_line(i8* %26)
  br label %28

28:                                               ; preds = %25, %19, %14, %8
  br label %44

29:                                               ; preds = %1
  %30 = load i32, i32* @REG_TYPE_SCORE, align 4
  %31 = call i32 @reg_required_here(i8** %2, i32 15, i32 %30)
  %32 = load i64, i64* @FAIL, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = call i32 @skip_past_comma(i8** %2)
  %37 = load i64, i64* @FAIL, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @REG_TYPE_SCORE_SR, align 4
  %42 = call i32 @reg_required_here(i8** %2, i32 10, i32 %41)
  br label %43

43:                                               ; preds = %40, %35, %29
  br label %44

44:                                               ; preds = %43, %28
  ret void
}

declare dso_local i32 @skip_whitespace(i8*) #1

declare dso_local i32 @reg_required_here(i8**, i32, i32) #1

declare dso_local i32 @skip_past_comma(i8**) #1

declare dso_local i32 @end_of_line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
