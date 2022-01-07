; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-tailcall.c_suitable_for_tail_call_opt_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-tailcall.c_suitable_for_tail_call_opt_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_calls_alloca = common dso_local global i64 0, align 8
@USING_SJLJ_EXCEPTIONS = common dso_local global i64 0, align 8
@current_function_calls_setjmp = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @suitable_for_tail_call_opt_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suitable_for_tail_call_opt_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* @current_function_calls_alloca, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %33

6:                                                ; preds = %0
  %7 = load i64, i64* @USING_SJLJ_EXCEPTIONS, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i64 (...) @current_function_has_exception_handlers()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %33

13:                                               ; preds = %9, %6
  %14 = load i64, i64* @current_function_calls_setjmp, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %33

17:                                               ; preds = %13
  %18 = load i32, i32* @current_function_decl, align 4
  %19 = call i64 @DECL_ARGUMENTS(i32 %18)
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %29, %17
  %21 = load i64, i64* %2, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @TREE_ADDRESSABLE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %33

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %2, align 8
  br label %20

32:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %27, %16, %12, %5
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @current_function_has_exception_handlers(...) #1

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
