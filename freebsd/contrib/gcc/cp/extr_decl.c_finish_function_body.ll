; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_function_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_function_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_function_body(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @NULL_TREE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %27

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @finish_compound_stmt(i64 %8)
  %10 = load i64, i64* @processing_template_decl, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %27

13:                                               ; preds = %7
  %14 = load i32, i32* @current_function_decl, align 4
  %15 = call i64 @DECL_CONSTRUCTOR_P(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @finish_constructor_body()
  br label %26

19:                                               ; preds = %13
  %20 = load i32, i32* @current_function_decl, align 4
  %21 = call i64 @DECL_DESTRUCTOR_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @finish_destructor_body()
  br label %25

25:                                               ; preds = %23, %19
  br label %26

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %6, %26, %12
  ret void
}

declare dso_local i32 @finish_compound_stmt(i64) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @finish_constructor_body(...) #1

declare dso_local i64 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @finish_destructor_body(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
