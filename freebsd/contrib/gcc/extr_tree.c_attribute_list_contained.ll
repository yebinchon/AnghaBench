; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_attribute_list_contained.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_attribute_list_contained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attribute_list_contained(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %118

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %37, %13
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_PURPOSE(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_PURPOSE(i64 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = call i32* @TREE_VALUE(i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32* @TREE_VALUE(i64 %31)
  %33 = icmp eq i32* %30, %32
  br label %34

34:                                               ; preds = %28, %22, %19, %16
  %35 = phi i1 [ false, %22 ], [ false, %19 ], [ false, %16 ], [ %33, %28 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_CHAIN(i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %7, align 8
  br label %16

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %118

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %117

53:                                               ; preds = %50
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @TREE_PURPOSE(i64 %54)
  %56 = call i32 @IDENTIFIER_POINTER(i64 %55)
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @lookup_attribute(i32 %56, i64 %57)
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %102, %53
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @NULL_TREE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = call i32* @TREE_VALUE(i64 %64)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = call i32* @TREE_VALUE(i64 %68)
  %70 = call i64 @TREE_CODE(i32* %69)
  %71 = load i64, i64* @TREE_LIST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = load i64, i64* %8, align 8
  %75 = call i32* @TREE_VALUE(i64 %74)
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = call i32* @TREE_VALUE(i64 %78)
  %80 = call i64 @TREE_CODE(i32* %79)
  %81 = load i64, i64* @TREE_LIST, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i64, i64* %7, align 8
  %85 = call i32* @TREE_VALUE(i64 %84)
  %86 = load i64, i64* %8, align 8
  %87 = call i32* @TREE_VALUE(i64 %86)
  %88 = call i32 @simple_cst_list_equal(i32* %85, i32* %87)
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %109

91:                                               ; preds = %83
  br label %101

92:                                               ; preds = %77, %73, %67, %63
  %93 = load i64, i64* %7, align 8
  %94 = call i32* @TREE_VALUE(i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = call i32* @TREE_VALUE(i64 %95)
  %97 = call i32 @simple_cst_equal(i32* %94, i32* %96)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %109

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %91
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @TREE_PURPOSE(i64 %103)
  %105 = call i32 @IDENTIFIER_POINTER(i64 %104)
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @TREE_CHAIN(i64 %106)
  %108 = call i64 @lookup_attribute(i32 %105, i64 %107)
  store i64 %108, i64* %8, align 8
  br label %59

109:                                              ; preds = %99, %90, %59
  %110 = load i64, i64* %8, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %118

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @TREE_CHAIN(i64 %115)
  store i64 %116, i64* %7, align 8
  br label %50

117:                                              ; preds = %50
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %112, %48, %12
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i32* @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @lookup_attribute(i32, i64) #1

declare dso_local i32 @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @simple_cst_list_equal(i32*, i32*) #1

declare dso_local i32 @simple_cst_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
