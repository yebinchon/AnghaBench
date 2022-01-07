; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_diagnose_arglist_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_diagnose_arglist_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"a parameter list with an ellipsis can%'t match an empty parameter name list declaration\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"an argument type that has a default promotion can%'t match an empty parameter name list declaration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64)* @diagnose_arglist_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diagnose_arglist_conflict(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @TREE_TYPE(i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @TREE_TYPE(i64 %18)
  %20 = call i32 @comptypes(i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @TYPE_ARG_TYPES(i64 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @DECL_INITIAL(i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @TYPE_ARG_TYPES(i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @DECL_INITIAL(i64 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %30, %15, %4
  br label %75

39:                                               ; preds = %34, %26
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @TYPE_ARG_TYPES(i64 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @TYPE_ARG_TYPES(i64 %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @TREE_VALUE(i64 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @TREE_CHAIN(i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @TYPE_MAIN_VARIANT(i64 %58)
  %60 = load i64, i64* @void_type_node, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @inform(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  br label %75

64:                                               ; preds = %57, %51
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @c_type_promotes_to(i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @inform(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  br label %75

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @TREE_CHAIN(i64 %73)
  store i64 %74, i64* %9, align 8
  br label %48

75:                                               ; preds = %38, %69, %62, %48
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @comptypes(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @inform(i8*) #1

declare dso_local i64 @c_type_promotes_to(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
