; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_begin_function_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_begin_function_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i64 0, align 8
@BCS_FN_BODY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @begin_function_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @current_function_decl, align 4
  %4 = call i32 @FUNCTION_NEEDS_BODY_BLOCK(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @NULL_TREE, align 4
  store i32 %7, i32* %1, align 4
  br label %29

8:                                                ; preds = %0
  %9 = load i64, i64* @processing_template_decl, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  %13 = call i32 @keep_next_level(i32 1)
  br label %14

14:                                               ; preds = %12, %11
  %15 = load i32, i32* @BCS_FN_BODY, align 4
  %16 = call i32 @begin_compound_stmt(i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* @processing_template_decl, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @current_function_decl, align 4
  %22 = call i64 @DECL_DESTRUCTOR_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @begin_destructor_body()
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %6
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @FUNCTION_NEEDS_BODY_BLOCK(i32) #1

declare dso_local i32 @keep_next_level(i32) #1

declare dso_local i32 @begin_compound_stmt(i32) #1

declare dso_local i64 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @begin_destructor_body(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
