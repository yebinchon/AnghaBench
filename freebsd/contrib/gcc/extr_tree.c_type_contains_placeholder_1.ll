; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_contains_placeholder_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_type_contains_placeholder_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @type_contains_placeholder_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_contains_placeholder_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TYPE_SIZE(i32 %5)
  %7 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TYPE_SIZE_UNIT(i32 %10)
  %12 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @TREE_TYPE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @TREE_TYPE(i32 %19)
  %21 = call i32 @type_contains_placeholder_p(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %9, %1
  store i32 1, i32* %2, align 4
  br label %83

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @TREE_CODE(i32 %25)
  switch i32 %26, label %81 [
    i32 128, label %27
    i32 141, label %27
    i32 140, label %27
    i32 142, label %27
    i32 135, label %27
    i32 136, label %27
    i32 131, label %27
    i32 137, label %27
    i32 139, label %27
    i32 129, label %27
    i32 138, label %28
    i32 133, label %28
    i32 143, label %41
    i32 132, label %45
    i32 130, label %45
    i32 134, label %45
  ]

27:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  store i32 0, i32* %2, align 4
  br label %83

28:                                               ; preds = %24, %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TYPE_MIN_VALUE(i32 %29)
  %31 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TYPE_MAX_VALUE(i32 %34)
  %36 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @TYPE_DOMAIN(i32 %42)
  %44 = call i32 @type_contains_placeholder_p(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %83

45:                                               ; preds = %24, %24, %24
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @TYPE_FIELDS(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %77, %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @TREE_CODE(i32 %52)
  %54 = load i32, i32* @FIELD_DECL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @DECL_FIELD_OFFSET(i32 %57)
  %59 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @TREE_CODE(i32 %62)
  %64 = icmp eq i32 %63, 134
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @DECL_QUALIFIER(i32 %66)
  %68 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @TREE_TYPE(i32 %71)
  %73 = call i32 @type_contains_placeholder_p(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %65, %56
  store i32 1, i32* %2, align 4
  br label %83

76:                                               ; preds = %70, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @TREE_CHAIN(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %48

80:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %83

81:                                               ; preds = %24
  %82 = call i32 (...) @gcc_unreachable()
  br label %83

83:                                               ; preds = %23, %27, %38, %41, %75, %80, %81
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @CONTAINS_PLACEHOLDER_P(i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @type_contains_placeholder_p(i64) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i64 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @DECL_FIELD_OFFSET(i32) #1

declare dso_local i32 @DECL_QUALIFIER(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
