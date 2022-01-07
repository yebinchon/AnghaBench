; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_print_lambda_loopnest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_print_lambda_loopnest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Loop %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_lambda_loopnest(i32* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @LN_DEPTH(i32 %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32* @LN_LOOPS(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @LN_DEPTH(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @LN_INVARIANTS(i32 %29)
  %31 = call i32 @print_lambda_loop(i32* %20, i32 %26, i32 %28, i32 %30, i8 signext 105)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  ret void
}

declare dso_local i32 @LN_DEPTH(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_lambda_loop(i32*, i32, i32, i32, i8 signext) #1

declare dso_local i32* @LN_LOOPS(i32) #1

declare dso_local i32 @LN_INVARIANTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
