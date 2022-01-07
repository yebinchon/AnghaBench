; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_targhooks.c_default_invalid_within_doloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_targhooks.c_default_invalid_within_doloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Function call in loop.\00", align 1
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Computed branch in the loop.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @default_invalid_within_doloop(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @CALL_P(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @JUMP_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @PATTERN(i32 %13)
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @PATTERN(i32 %19)
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @ADDR_VEC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %26

25:                                               ; preds = %18, %8
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %24, %7
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
