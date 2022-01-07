; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_same_signature_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_same_signature_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @same_signature_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @DECL_DESTRUCTOR_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @DECL_DESTRUCTOR_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @special_function_p(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @special_function_p(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %78

22:                                               ; preds = %15, %11, %2
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @DECL_DESTRUCTOR_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @DECL_DESTRUCTOR_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 0, i32* %3, align 4
  br label %78

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @DECL_NAME(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @DECL_NAME(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @DECL_CONV_FN_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @DECL_CONV_FN_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DECL_CONV_FN_TYPE(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DECL_CONV_FN_TYPE(i32 %48)
  %50 = call i64 @same_type_p(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %45, %31
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = call i32 @TYPE_ARG_TYPES(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @TREE_TYPE(i32 %56)
  %58 = call i32 @TYPE_ARG_TYPES(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @TREE_VALUE(i32 %59)
  %61 = call i32 @TREE_TYPE(i32 %60)
  %62 = call i64 @TYPE_QUALS(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @TREE_VALUE(i32 %63)
  %65 = call i32 @TREE_TYPE(i32 %64)
  %66 = call i64 @TYPE_QUALS(i32 %65)
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @TREE_CHAIN(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @TREE_CHAIN(i32 %71)
  %73 = call i64 @compparms(i32 %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %78

76:                                               ; preds = %68, %52
  br label %77

77:                                               ; preds = %76, %45, %41, %37
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %30, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i64 @special_function_p(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i32) #1

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @DECL_CONV_FN_TYPE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @TYPE_QUALS(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i64 @compparms(i32, i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
