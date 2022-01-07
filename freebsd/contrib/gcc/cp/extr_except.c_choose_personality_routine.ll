; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_choose_personality_routine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_choose_personality_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@choose_personality_routine.state = internal global i32 0, align 4
@USING_SJLJ_EXCEPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"__gcj_personality_sj0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"__gcj_personality_v0\00", align 1
@eh_personality_libfunc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"mixing C++ and Java catches in a single translation unit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @choose_personality_routine(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @choose_personality_routine.state, align 4
  switch i32 %3, label %16 [
    i32 3, label %4
    i32 1, label %5
    i32 2, label %10
    i32 0, label %15
  ]

4:                                                ; preds = %1
  br label %30

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 129
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %28

9:                                                ; preds = %5
  br label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %28

14:                                               ; preds = %10
  br label %30

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %2, align 4
  switch i32 %17, label %25 [
    i32 129, label %18
    i32 128, label %19
  ]

18:                                               ; preds = %16
  store i32 1, i32* @choose_personality_routine.state, align 4
  br label %27

19:                                               ; preds = %16
  store i32 2, i32* @choose_personality_routine.state, align 4
  %20 = load i32, i32* @USING_SJLJ_EXCEPTIONS, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)
  %24 = call i32 @init_one_libfunc(i8* %23)
  store i32 %24, i32* @eh_personality_libfunc, align 4
  br label %27

25:                                               ; preds = %16
  %26 = call i32 (...) @gcc_unreachable()
  br label %27

27:                                               ; preds = %25, %19, %18
  br label %30

28:                                               ; preds = %13, %8
  %29 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 3, i32* @choose_personality_routine.state, align 4
  br label %30

30:                                               ; preds = %28, %27, %14, %9, %4
  ret void
}

declare dso_local i32 @init_one_libfunc(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
