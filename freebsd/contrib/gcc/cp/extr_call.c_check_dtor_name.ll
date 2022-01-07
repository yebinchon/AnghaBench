; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_check_dtor_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_check_dtor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_dtor_name(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @TYPE_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @TREE_TYPE(i64 %16)
  store i64 %17, i64* %5, align 8
  br label %58

18:                                               ; preds = %10
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TYPE_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %57

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @IDENTIFIER_NODE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @IS_AGGR_TYPE(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @constructor_name(i64 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %32, %28
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @ENUMERAL_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @TYPE_IDENTIFIER(i64 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %32
  store i32 1, i32* %3, align 4
  br label %68

48:                                               ; preds = %42, %37
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @get_type_value(i64 %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48
  br label %56

52:                                               ; preds = %23
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @DECL_CLASS_TEMPLATE_P(i64 %53)
  %55 = call i32 @gcc_assert(i32 %54)
  store i32 0, i32* %3, align 4
  br label %68

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %57, %15
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @TYPE_MAIN_VARIANT(i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @TYPE_MAIN_VARIANT(i64 %65)
  %67 = call i32 @same_type_p(i32 %64, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %61, %52, %47, %9
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @constructor_name(i64) #1

declare dso_local i64 @TYPE_IDENTIFIER(i64) #1

declare dso_local i64 @get_type_value(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_CLASS_TEMPLATE_P(i64) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
