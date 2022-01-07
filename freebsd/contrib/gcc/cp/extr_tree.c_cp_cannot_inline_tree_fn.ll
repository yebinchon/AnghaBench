; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_cannot_inline_tree_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_cp_cannot_inline_tree_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_really_no_inline = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_cannot_inline_tree_fn(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @DECL_TEMPLATE_INFO(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @DECL_TEMPLATE_INFO(i32 %14)
  %16 = call i64 @TI_PENDING_TEMPLATE_FLAG(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @template_for_substitution(i32 %19)
  %21 = call i32 @DECL_TEMPLATE_RESULT(i32 %20)
  %22 = call i32 @DECL_INLINE(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @instantiate_decl(i32 %26, i32 0, i32 0)
  %28 = load i32*, i32** %3, align 8
  store i32 %27, i32* %28, align 4
  store i32 %27, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @DECL_TEMPLATE_INFO(i32 %29)
  %31 = call i64 @TI_PENDING_TEMPLATE_FLAG(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %64

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %13, %1
  %36 = load i64, i64* @flag_really_no_inline, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @DECL_ATTRIBUTES(i32 %39)
  %41 = call i32* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %64

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @DECL_DECLARED_INLINE_P(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @DECL_REPLACEABLE_P(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  store i32 1, i32* %2, align 4
  br label %64

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @varargs_function_p(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  store i32 1, i32* %2, align 4
  br label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @function_attribute_inlinable_p(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  store i32 1, i32* %2, align 4
  br label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %57, %52, %43, %33, %24
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @DECL_TEMPLATE_INFO(i32) #1

declare dso_local i64 @TI_PENDING_TEMPLATE_FLAG(i64) #1

declare dso_local i32 @DECL_INLINE(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

declare dso_local i32 @template_for_substitution(i32) #1

declare dso_local i32 @instantiate_decl(i32, i32, i32) #1

declare dso_local i32* @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i32 @DECL_DECLARED_INLINE_P(i32) #1

declare dso_local i64 @DECL_REPLACEABLE_P(i32) #1

declare dso_local i64 @varargs_function_p(i32) #1

declare dso_local i32 @function_attribute_inlinable_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
