; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_friend_accessible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_friend_accessible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @friend_accessible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friend_accessible_p(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @FUNCTION_DECL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @DECL_FUNCTION_TEMPLATE_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @DECL_BEFRIENDING_CLASSES(i64 %24)
  store i64 %25, i64* %8, align 8
  br label %35

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TYPE_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @CLASSTYPE_BEFRIENDING_CLASSES(i64 %31)
  store i64 %32, i64* %8, align 8
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %118

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %49, %35
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @TREE_VALUE(i64 %42)
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @protected_accessible_p(i64 %41, i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %118

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @TREE_CHAIN(i64 %50)
  store i64 %51, i64* %9, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @TYPE_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TYPE_CONTEXT(i64 %57)
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %76, %56
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @TYPE_P(i64 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @protected_accessible_p(i64 %69, i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %118

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @TYPE_CONTEXT(i64 %77)
  store i64 %78, i64* %9, align 8
  br label %59

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @TREE_CODE(i64 %81)
  %83 = load i64, i64* @FUNCTION_DECL, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @DECL_FUNCTION_TEMPLATE_P(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %85, %80
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @DECL_CLASS_SCOPE_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @DECL_CONTEXT(i64 %94)
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @friend_accessible_p(i64 %95, i64 %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %4, align 4
  br label %118

101:                                              ; preds = %93, %89
  %102 = load i64, i64* %5, align 8
  %103 = call i64 @DECL_TEMPLATE_INFO(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* @processing_template_decl, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @processing_template_decl, align 4
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @DECL_TI_TEMPLATE(i64 %108)
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @friend_accessible_p(i64 %109, i64 %110, i64 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @processing_template_decl, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* @processing_template_decl, align 4
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %85
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %105, %100, %74, %47, %33, %13
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_FUNCTION_TEMPLATE_P(i64) #1

declare dso_local i64 @DECL_BEFRIENDING_CLASSES(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @CLASSTYPE_BEFRIENDING_CLASSES(i64) #1

declare dso_local i64 @protected_accessible_p(i64, i64, i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
