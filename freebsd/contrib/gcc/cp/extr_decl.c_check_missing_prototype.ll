; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_missing_prototype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_missing_prototype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_missing_prototypes = common dso_local global i64 0, align 8
@OPT_Wmissing_prototypes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no previous prototype for %q+D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_missing_prototype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_missing_prototype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @warn_missing_prototypes, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = call i64 (...) @namespace_bindings_p()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @TREE_PUBLIC(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DECL_MAIN_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @DECL_NON_THUNK_FUNCTION_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @DECL_FUNCTION_MEMBER_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @DECL_NAMESPACE_SCOPE_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @decl_anon_ns_mem_p(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @DECL_DECLARED_INLINE_P(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @DECL_NAME(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @DECL_CONTEXT(i32 %40)
  %42 = call i32 @namespace_binding(i32 %39, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @fn_previously_found(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @OPT_Wmissing_prototypes, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @warning(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %37
  br label %52

52:                                               ; preds = %51, %33, %29, %25, %21, %17, %13, %9, %6, %1
  ret void
}

declare dso_local i64 @namespace_bindings_p(...) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_MAIN_P(i32) #1

declare dso_local i64 @DECL_NON_THUNK_FUNCTION_P(i32) #1

declare dso_local i32 @DECL_FUNCTION_MEMBER_P(i32) #1

declare dso_local i64 @DECL_NAMESPACE_SCOPE_P(i32) #1

declare dso_local i32 @decl_anon_ns_mem_p(i32) #1

declare dso_local i32 @DECL_DECLARED_INLINE_P(i32) #1

declare dso_local i32 @namespace_binding(i32, i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @fn_previously_found(i32, i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
