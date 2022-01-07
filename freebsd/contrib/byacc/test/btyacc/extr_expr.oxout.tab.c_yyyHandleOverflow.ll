; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_expr.oxout.tab.c_yyyHandleOverflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_expr.oxout.tab.c_yyyHandleOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"SSAL overflow: \00", align 1
@yyySSALspaceSize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ready set overflow: \00", align 1
@yyyRSmaxSize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"traversal stack overflow: \00", align 1
@yyyTravStackMaxSize = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"size was %ld.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"     Have to modify evaluator:  -Y%c%ld.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyyHandleOverflow(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 130, label %11
    i32 128, label %13
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %10 = load i64, i64* @yyySSALspaceSize, align 8
  store i64 %10, i64* %5, align 8
  br label %16

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %12 = load i64, i64* @yyyRSmaxSize, align 8
  store i64 %12, i64* %5, align 8
  br label %16

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %14 = load i64, i64* @yyyTravStackMaxSize, align 8
  store i64 %14, i64* %5, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13, %11, %9
  %17 = load i64, i64* %5, align 8
  %18 = mul nsw i64 3, %17
  %19 = sdiv i64 %18, 2
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i64 100, i64* %6, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fputs(i8* %24, i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i8
  %30 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8 signext %29)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %2, align 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i32, i8*, i8, ...) @fprintf(i32 %31, i8* %32, i8 signext %33, i64 %34)
  %36 = call i32 @exit(i32 -1) #3
  unreachable
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
