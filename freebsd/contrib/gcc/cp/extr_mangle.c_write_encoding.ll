; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_encoding(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @DECL_LANG_SPECIFIC(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @DECL_EXTERN_C_FUNCTION_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @DECL_OVERLOADED_OPERATOR_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @write_name(i32 %19, i32 0)
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @DECL_NAME(i32 %22)
  %24 = call i32 @write_source_name(i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %69

26:                                               ; preds = %10, %1
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @write_name(i32 %27, i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @FUNCTION_DECL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @decl_is_template_id(i32 %34, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = call i32 (...) @save_partially_mangled_name()
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @get_mostly_instantiated_function_type(i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = call i32 (...) @restore_partially_mangled_name()
  %42 = load i32, i32* @NULL_TREE, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @TREE_TYPE(i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @DECL_CONSTRUCTOR_P(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @DECL_DESTRUCTOR_P(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @DECL_CONV_FN_P(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @decl_is_template_id(i32 %61, i32* null)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %60, %56, %52, %47
  %65 = phi i1 [ false, %56 ], [ false, %52 ], [ false, %47 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @write_bare_function_type(i32 %48, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %25, %64, %26
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_EXTERN_C_FUNCTION_P(i32) #1

declare dso_local i64 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i32 @write_name(i32, i32) #1

declare dso_local i32 @write_source_name(i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @decl_is_template_id(i32, i32*) #1

declare dso_local i32 @save_partially_mangled_name(...) #1

declare dso_local i32 @get_mostly_instantiated_function_type(i32) #1

declare dso_local i32 @restore_partially_mangled_name(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @write_bare_function_type(i32, i32, i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_CONV_FN_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
