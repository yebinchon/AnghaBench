; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_no_linkage_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_no_linkage_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @no_linkage_check(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @processing_template_decl, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @NULL_TREE, align 4
  store i32 %12, i32* %3, align 4
  br label %114

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  switch i32 %15, label %112 [
    i32 130, label %16
    i32 128, label %22
    i32 135, label %29
    i32 136, label %52
    i32 131, label %52
    i32 129, label %52
    i32 132, label %57
    i32 133, label %72
    i32 134, label %82
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TYPE_PTRMEMFUNC_P(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %58

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %13, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CLASS_TYPE_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @NULL_TREE, align 4
  store i32 %27, i32* %3, align 4
  br label %114

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %13, %28
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TYPE_ANONYMOUS_P(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TYPE_MAIN_DECL(i32 %36)
  %38 = call i32 @decl_function_context(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @TREE_PUBLIC(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %3, align 4
  br label %114

50:                                               ; preds = %44, %35
  %51 = load i32, i32* @NULL_TREE, align 4
  store i32 %51, i32* %3, align 4
  br label %114

52:                                               ; preds = %13, %13, %13
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @no_linkage_check(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %114

57:                                               ; preds = %13
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @no_linkage_check(i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %114

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @no_linkage_check(i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %114

72:                                               ; preds = %13
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @TYPE_METHOD_BASETYPE(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @no_linkage_check(i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %114

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %13, %81
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @TYPE_ARG_TYPES(i32 %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %104, %82
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @void_list_node, align 4
  %91 = icmp ne i32 %89, %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i1 [ false, %85 ], [ %91, %88 ]
  br i1 %93, label %94, label %107

94:                                               ; preds = %92
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @TREE_VALUE(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @no_linkage_check(i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %114

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @TREE_CHAIN(i32 %105)
  store i32 %106, i32* %8, align 4
  br label %85

107:                                              ; preds = %92
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @TREE_TYPE(i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @no_linkage_check(i32 %109, i32 %110)
  store i32 %111, i32* %3, align 4
  br label %114

112:                                              ; preds = %13
  %113 = load i32, i32* @NULL_TREE, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %107, %101, %79, %67, %65, %52, %50, %48, %33, %26, %11
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @TYPE_ANONYMOUS_P(i32) #1

declare dso_local i32 @decl_function_context(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_METHOD_BASETYPE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
